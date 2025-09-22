import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Positioned(
            top: 82.h,
            left: 159.w,
            child:CustomSvg(path: AppIcons.unlock,width: 85.w,height: 85.h,) ),
        Positioned(
          right: 18.w,
          top: 65.h,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: (){
              MyNavigator.goBack(context);
             },
            child: Container(
                alignment: Alignment.center,
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: CustomSvg(path: AppIcons.close,width: 17.w,height: 17.h,),
              ),
          ),
          ),
        Positioned(
          left: 99.w,
          top: 194.h,
          child:Text(
            'الترقية إلي\nالنسخة المميزة',
            style: AppStyles.textStyle26w400.copyWith(
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),),
        Positioned(
            top: -155.68.h,
            left: 204.57.w,
            child:IgnorePointer(child: CustomSvg(path: AppIcons.rectangle1,width: 69.79.w,height: 284.h,))
        ),
        Positioned(
            top:-30.68.h,
            left:160.57.w,
            child:IgnorePointer(child: CustomSvg(path: AppIcons.rectangle2,width: 69.79.w,height: 284.h,))
        ),
        Positioned(
            top: -8.h,
            left: 270.w,
            child:IgnorePointer(child: CustomSvg(path: AppIcons.rectangle3,width: 50.w,height: 284.h,))
        ),
      ],
    );
  }
}
