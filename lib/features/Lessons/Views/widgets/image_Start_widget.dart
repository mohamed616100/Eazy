import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appImages.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ImageStartWidget extends StatelessWidget {
  const ImageStartWidget({super.key, this.Buttom});
  final Widget? Buttom;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 210.h,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 192.h,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(Appimages.lessonsImage))
            ),
          ),
          Positioned(
              left: 20.w,
              top: 65.86.h,
              child: Text('Grammer',style: AppStyles.textStyle35w400F.copyWith(
                color: AppColors.white,
              ),)),
          Buttom??const SizedBox(),
        ],
      ),
    );
  }
}
