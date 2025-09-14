import 'package:eazy_app/core/utils/App_color.dart';
import 'package:eazy_app/core/utils/App_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key,
    required this.text,
    required this.onPressed, required this.width, required this.height});

  final String text;
  final double width;
  final double height;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kplue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r)
              ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style:AppStyles.textStyle14w700FF.copyWith(
              color: AppColors.kwhgit,
            )
      ),
      )
    );
  }
}