
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';

class HomeRegularText extends StatelessWidget {
  final String text;
  const HomeRegularText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle12w400FF
          .copyWith(color: AppColors.iconSave),
      textDirection: TextDirection.rtl,
    );
  }
}
