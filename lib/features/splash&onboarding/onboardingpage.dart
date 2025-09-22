import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/CustomButton.dart';
import 'package:eazy_app/core/widgets/CustomSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Joining_flow/login_screen.dart';
import 'onboarding2_screen.dart';
import 'onboarding3_screen.dart';

class OnBoardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final int activeIndex;
  final bool showSkip;

  const OnBoardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.activeIndex,
    this.showSkip = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            SizedBox(height: 74.h),
            Center(
              child: Image.asset(
                "assets/images/onboarding.png",
                width: 329.w,
                height: 330.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 84.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                bool isActive = index == activeIndex;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Container(
                    width: isActive ? 15.w : 10.w,
                    height: isActive ? 15.h : 10.h,
                    decoration: BoxDecoration(
                      color: isActive
                          ? AppColors.blue
                          : AppColors.blue.withOpacity(0.26),
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }),
            ),

            SizedBox(height: 40.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyles.textStyle20w400FF.copyWith(
                color: AppColors.black,
                height: 1.35,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              description,
              textAlign: TextAlign.center,
              style: AppStyles.textStyle16w400.copyWith(
                color: AppColors.gray,
                height: 1.5,
              ),
            ),
            const Spacer(),

            Row(
              mainAxisAlignment: showSkip
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: showSkip ? 231.w : 300.w,
                  height: 57.h,
                  text: showSkip ? "التالي" : "ابدأ",
                  color: showSkip ? AppColors.blue : Colors.orange,
                  textStyle: AppStyles.textStyle14w700FF.copyWith(
                    color: AppColors.white,
                    fontSize: 14.sp,
                  ),
                  icon: showSkip
                      ? CustomSvg(
                    path: "assets/icons/arrow_back.svg",
                    color: AppColors.white,
                  )
                      : null,
                  onPressed: () {
                    if (activeIndex == 2) {
                      MyNavigator.goTo(
                        context,
                        const OnBoarding2(),
                        type: NavigatorType.pushReplacement,
                      );
                    } else if (activeIndex == 1) {
                      MyNavigator.goTo(
                        context,
                        const OnBoarding3(),
                        type: NavigatorType.pushReplacement,
                      );
                    } else {
                      MyNavigator.goTo(
                        context,
                        const LoginScreen(),
                        type: NavigatorType.pushAndRemoveUntil,
                      );
                    }
                  },
                ),
                if (showSkip)
                  TextButton(
                    onPressed: () {
                      MyNavigator.goTo(
                        context,
                        const LoginScreen(),
                        type: NavigatorType.pushAndRemoveUntil,
                      );
                    },
                    child: Text(
                      "تخطي",
                      style: AppStyles.textStyle16w400.copyWith(
                        color: AppColors.gray2,
                        height: 1.0,
                      ),
                    ),
                  ),
              ],
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
