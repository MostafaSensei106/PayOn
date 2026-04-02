import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

class OtpFieldComponent extends StatelessWidget {
  final int length;
  final void Function(String) onCompleted;

  const OtpFieldComponent({
    super.key,
    this.length = 4,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        length,
        (index) => SizedBox(
          width: AppConfig.otpFieldSize,
          height: AppConfig.otpFieldSize,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
              ),
            ),
            onChanged: (value) {
              if (value.length == 1 && index < length - 1) {
                FocusScope.of(context).nextFocus();
              }
              // Add logic to collect values and call onCompleted
            },
          ),
        ),
      ),
    );
  }
}
