import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
class TextSplash extends StatelessWidget {
  const TextSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            style: AppStyles.textStyleFingerPaint114,
            children: [
              TextSpan(text: "E", style: TextStyle(color: AppColors.blue)),
              TextSpan(text: "a", style: TextStyle(color: AppColors.white)),
              TextSpan(text: "z", style: TextStyle(color: AppColors.blue)),
              const TextSpan(text: "y", style: TextStyle(color: AppColors.orange)),
            ],
          ),
        ),
        Text(
          '!مدرسة في جيبك',
          style: AppStyles.textStyle18w600.copyWith(
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
