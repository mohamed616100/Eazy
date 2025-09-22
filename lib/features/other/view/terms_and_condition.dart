import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  AppPaddings.mainPadding,
        child: Column(
          children: [
            SizedBox(height: 8.h,),
           CustomAppBar(title: "الشروط والأحكام", ),
            SizedBox(height: 58.h,),
            Container(
              width: 355.w,
              height: 498.h,
              decoration: BoxDecoration(
                color: AppColors.white2
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر .يوضع هنا نص الشروط والأحكام والذي عادة ما يتكون من عدة أسطر ." ,
                style: AppStyles.textStyle12w400LS.copyWith(height: 2),
                  textDirection: TextDirection.rtl,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
