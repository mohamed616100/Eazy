import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContinerResult extends StatelessWidget {
  const ContinerResult({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 3.w),
      child: Container(
        alignment: Alignment.center,
        width: 33.w,
        height: 33.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.blue
        ),
        child: Text(text,style: AppStyles.textStyle14w400FF.copyWith(
            color: AppColors.white,
            fontSize: 15.sp
        ),),
      ),
    );
  }
}
