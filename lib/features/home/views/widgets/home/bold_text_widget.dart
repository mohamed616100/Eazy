
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';

class HomeBoldText extends StatelessWidget {
  final String text;
  const HomeBoldText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle16w700FF
          .copyWith(color: AppColors.black),
      textDirection: TextDirection.rtl,
    );
  }
}
