
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';

class EazyWord extends StatelessWidget {
  const EazyWord({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: 'مرحبا بك في',
                style: AppStyles.textStyle16w700FF
                    .copyWith(color: AppColors.black)),
            const TextSpan(text: ' '),
            TextSpan(
                text: 'E',
                style: AppStyles.textStyle23_6w400
                    .copyWith(color: AppColors.blue)),
            TextSpan(
                text: 'a',
                style: AppStyles.textStyle23_6w400
                    .copyWith(color: AppColors.black)),
            TextSpan(
                text: 'z',
                style: AppStyles.textStyle23_6w400
                    .copyWith(color: AppColors.blue)),
            TextSpan(
                text: 'y',
                style: AppStyles.textStyle23_6w400
                    .copyWith(color: AppColors.orange)),
            const TextSpan(text: ' '),
            TextSpan(
                text: '!',
                style: AppStyles.textStyle16w700FF
                    .copyWith(color: AppColors.blue)),
          ])),
    );
  }
}
