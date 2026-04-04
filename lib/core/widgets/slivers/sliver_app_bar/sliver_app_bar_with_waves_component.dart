import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SliverAppBarWithWavesComponent extends StatefulWidget {
  const SliverAppBarWithWavesComponent({
    required this.scrollController,
    super.key,
    this.title,
    this.actions,
    this.pinned = true,
    this.floating = false,
    this.expandedHeight = 180.0,
    this.waveColor,
    this.secondaryWaveColor,
    this.backgroundColor,
    this.flexibleSpaceChild,
    this.centerTitle = true,
  });

  final String? title;
  final List<Widget>? actions;
  final bool pinned;
  final bool floating;
  final double expandedHeight;
  final Color? waveColor;
  final Color? secondaryWaveColor;
  final Color? backgroundColor;
  final Widget? flexibleSpaceChild;
  final bool centerTitle;
  final ScrollController scrollController;

  @override
  State<SliverAppBarWithWavesComponent> createState() =>
      _SliverAppBarWithWavesComponentState();
}

class _SliverAppBarWithWavesComponentState
    extends State<SliverAppBarWithWavesComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isExpanded = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();

    widget.scrollController.addListener(_scrollListener);
  }

  @override
  void didUpdateWidget(covariant SliverAppBarWithWavesComponent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.scrollController != oldWidget.scrollController) {
      oldWidget.scrollController.removeListener(_scrollListener);
      widget.scrollController.addListener(_scrollListener);
    }
  }

  void _scrollListener() {
    if (!mounted) return;
    final expanded =
        widget.scrollController.hasClients &&
        widget.scrollController.offset < (widget.expandedHeight - 80);
    if (_isExpanded != expanded) {
      setState(() {
        _isExpanded = expanded;
      });
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  void leave(final BuildContext context) {
    unawaited(HapticFeedback.vibrate());
    context.pop();
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SliverAppBar(
      pinned: widget.pinned,
      floating: widget.floating,
      expandedHeight: widget.expandedHeight,
      title: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Text(
          widget.title ?? '',
          key: ValueKey<String>('${widget.title}_$_isExpanded'),
          style: TextStyle(
            color: _isExpanded ? colorScheme.onPrimary : colorScheme.onSurface,
          ),
        ),
      ),
      actions: widget.actions,
      centerTitle: widget.centerTitle,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: colorScheme.surface,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Container(color: widget.backgroundColor ?? colorScheme.primary),
            // Secondary Wave (Layer back)
            Positioned.fill(
              child: RepaintBoundary(
                child: CustomPaint(
                  painter: _WavePainter(
                    animation: _controller,
                    color:
                        widget.secondaryWaveColor ??
                        colorScheme.surface.withValues(alpha: 0.5),
                    reverse: true,
                    amplitude: 20,
                    waveHeight: 80,
                  ),
                ),
              ),
            ),
            // Primary Wave (Layer front)
            Positioned.fill(
              child: RepaintBoundary(
                child: CustomPaint(
                  painter: _WavePainter(
                    animation: _controller,
                    color: widget.waveColor ?? colorScheme.surface,
                  ),
                ),
              ),
            ),
            if (widget.flexibleSpaceChild != null) widget.flexibleSpaceChild!,
          ],
        ),
      ),
    );
  }
}

class _WavePainter extends CustomPainter {
  _WavePainter({
    required this.animation,
    required this.color,
    this.reverse = false,
    this.amplitude = 15.0,
    this.waveHeight = 100.0,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color color;
  final bool reverse;
  final double amplitude;
  final double waveHeight;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    final baseHeight = size.height - (waveHeight / 2);

    path.moveTo(0, size.height);
    path.lineTo(0, baseHeight);

    final waveValue = animation.value;
    final direction = reverse ? -1 : 1;
    final phase = waveValue * 2 * math.pi * direction;

    for (double i = 0; i <= size.width; i++) {
      final y =
          baseHeight +
          amplitude * math.sin((i / size.width * 2 * math.pi) + phase);
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _WavePainter oldDelegate) =>
      oldDelegate.color != color ||
      oldDelegate.reverse != reverse ||
      oldDelegate.amplitude != amplitude ||
      oldDelegate.waveHeight != waveHeight;
}
