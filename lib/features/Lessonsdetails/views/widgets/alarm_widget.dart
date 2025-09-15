import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
class AlarmWidget extends StatelessWidget {
  const AlarmWidget({super.key, required this.title, required this.content});
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 16, color: Colors.black),
          children: [
            TextSpan(
              text: '$title! ',
              style: AppStyles.textStyle18w400.copyWith(
                color: AppColors.red,
              )
            ),
            TextSpan(
              text: content,
              style: AppStyles.textStyle18w400
            ),
          ],
        ),
      ),
    );
  }
}
