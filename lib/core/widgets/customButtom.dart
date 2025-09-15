
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width,
      required this.height,
        this.colorbut, this.textcolor,
        this.icon
      });
  final CustomSvg? icon;
  final Color? colorbut;
  final Color? textcolor;
  final String text;
  final double width;
  final double height;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:colorbut??AppColors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r)),
          ),
          onPressed: onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: AppStyles.textStyle14w700FF.copyWith(
                    color:textcolor??AppColors.white,
                  )),
              SizedBox(width: 10.w),
              icon??SizedBox()
            ],
          ),
        ));
  }
}
