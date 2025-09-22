
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';

class HomeSectionText extends StatelessWidget {
  final String text;
  const HomeSectionText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle14w400FF
          .copyWith(color: AppColors.textHomeSection),
      textDirection: TextDirection.rtl,
    );
  }
}
