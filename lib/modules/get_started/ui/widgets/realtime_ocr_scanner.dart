import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/ocr/ocr_service.dart';

class RealtimeOcrScanner extends StatefulWidget {
  const RealtimeOcrScanner({
    required this.docId,
    required this.onSuccess,
    super.key,
  });

  final int docId;
  final ValueChanged<File> onSuccess;

  @override
  State<RealtimeOcrScanner> createState() => _RealtimeOcrScannerState();
}

class _RealtimeOcrScannerState extends State<RealtimeOcrScanner> {
  CameraController? _controller;
  bool _isInitializing = true;
  bool _isProcessing = false;
  Timer? _scanTimer;
  final OcrService _ocrService = getIt<OcrService>();
  String _statusMessage = 'Align ID card within the frame...';

  @override
  void initState() {
    super.initState();
    unawaited(_initializeCamera());
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        setState(() {
          _statusMessage = 'No cameras available';
          _isInitializing = false;
        });
        return;
      }

      final backCamera = cameras.firstWhere(
        (c) => c.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );

      _controller = CameraController(
        backCamera,
        ResolutionPreset.high,
        enableAudio: false,
      );

      await _controller!.initialize();
      if (!mounted) return;

      setState(() {
        _isInitializing = false;
      });

      _startScanning();
    } catch (e) {
      setState(() {
        _statusMessage = 'Error initializing camera';
        _isInitializing = false;
      });
    }
  }

  void _startScanning() {
    _scanTimer = Timer.periodic(const Duration(milliseconds: 1500), (
      timer,
    ) async {
      if (_isProcessing ||
          _controller == null ||
          !_controller!.value.isInitialized) {
        return;
      }

      _isProcessing = true;
      try {
        final xFile = await _controller!.takePicture();
        final file = File(xFile.path);

        final extractedText = await _ocrService.extractText(file);

        // Check if the text contains common Egyptian ID keywords
        final isEgyptianId =
            extractedText.contains('جمهورية مصر العربية') ||
            extractedText.contains('بطاقة تحقيق شخصية') ||
            extractedText.contains('الرقم القومي') ||
            extractedText.contains('وزارة الداخلية');

        if (isEgyptianId) {
          timer.cancel();
          widget.onSuccess(file);
        }
      } catch (e) {
        // Ignore errors during continuous scan
      } finally {
        if (mounted) {
          _isProcessing = false;
        }
      }
    });
  }

  @override
  Future<void> dispose() async {
    _scanTimer?.cancel();
    await _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isInitializing) {
      return Container(
        height: 200.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
        ),
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_controller == null || !_controller!.value.isInitialized) {
      return Container(
        height: 200.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
        ),
        child: Center(child: Text(_statusMessage)),
      );
    }

    return Container(
      height: 250.h,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CameraPreview(_controller!),

          // Scanner Overlay
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(
                  context,
                ).colorScheme.primary.withValues(alpha: 0.5),
                width: 4,
              ),
            ),
          ),

          Positioned(
            bottom: 16.h,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    _statusMessage,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
