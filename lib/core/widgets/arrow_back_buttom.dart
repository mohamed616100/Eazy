import 'package:eazy_app/core/utils/App_color.dart';
import 'package:eazy_app/core/utils/App_icons.dart';
import 'package:eazy_app/core/widgets/Custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({super.key, this.onPressed });

  @override
  final Function()? onPressed;
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.kwhite2,
      ),
      child: IconButton(
        onPressed: onPressed??(){
          Navigator.pop(context);
        },
        icon: CustomSvg(path: AppIcons.arrow_frowerd,
          width: 7.1.w,
          height: 15.84.h,
          color: AppColors.kblack,),
      ),
    );
  }
}
