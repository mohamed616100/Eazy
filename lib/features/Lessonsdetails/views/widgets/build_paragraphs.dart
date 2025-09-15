import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BuildParagraphs extends StatelessWidget {
  const BuildParagraphs({super.key, required this.paragraphs});
  final List<String> paragraphs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: paragraphs.map((paragraph) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Text(
            paragraph,
            textAlign: TextAlign.right,
            style: AppStyles.textStyle14w400FF,
            textDirection: TextDirection.rtl,
          ),
        );
      }).toList(),
    );
  }
}
