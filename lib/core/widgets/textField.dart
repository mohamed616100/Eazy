
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/appStyles.dart';
import 'CustomSvg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? iconPath;
  final Color? iconColor;
  final double width;
  final double height;
  final Color? backgroundColor;
  final VoidCallback? onIconTap;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.maxLines,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.iconPath,
    this.iconColor,
    this.width = 340,
    this.height = 56,
    this.backgroundColor,
    this.onIconTap,
    this.prefixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textAlign: TextAlign.right,
        maxLines:maxLines ?? 1,
        style: AppStyles.textStyle12w400FF.copyWith(
          fontSize: 12.sp,
          height: 1.5,
        ),
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.textStyle12w400FF.copyWith(
            fontSize: 12.sp,
            color: const Color(0xFFA4ACAD),
            height: 1.5,
          ),
          filled: true,
          fillColor: backgroundColor ?? Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 20.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          prefixIcon: prefixIcon ??
              (iconPath != null
                  ? GestureDetector(
                onTap: onIconTap,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 8.w),
                  child: CustomSvg(
                    path: iconPath!,
                    width: 24.w,
                    height: 24.h,
                    color: iconColor,
                  ),
                ),
              )
                  : null),
        ),
      ),
    );
  }
}
