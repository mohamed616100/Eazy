import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/features/Upgrade/views/widgets/feature_description.dart';
import 'package:eazy_app/features/Upgrade/views/widgets/salary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SubscripitionView extends StatelessWidget {
  const SubscripitionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            CustomAppBar(title: 'الاشتركات',),
            SizedBox(height: 50.h),
            Container(
              width: double.infinity,
              height: 498.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: AppColors.white2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    height: 15.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.r),
                        topRight: Radius.circular(18.r),
                      ),
                      color: AppColors.blue,
                    ),
                  ),
                  SizedBox(height: 37.h),
                  Center(
                    child: Text(
                      'اشتراك اسبوعي',
                      textAlign: TextAlign.center,
                      style: AppStyles.textStyle16w400,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    width: 307.w,
                    child: Text(
                      'وصف خطة الاشتراك هنا والذي عادة ما يكون من عدة اسطر وصف خطة الاشتراك هنا والذي عادة ما يكون من عدة اسطر',
                      textAlign: TextAlign.end,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle14w400FF.copyWith(
                        color: AppColors.gray,
                        height: 2.2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  FeatureDescription(),
                  SizedBox(height: 20.h),
                  FeatureDescription(),
                  SizedBox(height: 20.h),
                  Padding(
                    padding:EdgeInsets.only(right: 20.h),
                    child: Text(' تاريخ التجديد  2023 يناير',
                      style: AppStyles.textStyle14w400FF.copyWith(
                        color: AppColors.gray,
                        height: 2.2.h,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  SizedBox(height: 37.h),
                  SalaryWidget(),
                  SizedBox(height: 29.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.w),
                    child: CustomBtn(
                      text: 'تجديد الاشتراك',
                      onPressed: (){
                        MyNavigator.goBack(context);
                      },
                      width: double.infinity,
                      height:54.h,
                      colorbut: AppColors.gray5,
                      textcolor: AppColors.gray
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
