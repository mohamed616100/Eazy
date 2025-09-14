import 'package:eazy_app/core/utils/App_color.dart';
import 'package:eazy_app/core/utils/App_icons.dart';
import 'package:eazy_app/core/utils/App_paddings.dart';
import 'package:eazy_app/core/utils/App_style.dart';
import 'package:eazy_app/core/widgets/Custom_app_bar.dart';
import 'package:eazy_app/core/widgets/Custom_svg.dart';
import 'package:eazy_app/features/Lessons/Views/widgets/image_Start_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LessonsDetailsView extends StatelessWidget {
  const LessonsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhgit,
      body: Padding(
        padding:AppPaddings.mainPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomAppBar(),
              SizedBox(height: 13.h,),
              ImageStartWidget(),
              SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSvg(path: AppIcons.saveIcon, width: 20.4.w, height: 23.h, color: AppColors.kgray),
                  Text('الفرق بين{}', style: AppStyles.textStyle20w400FF),
                ],
              ),
              SizedBox(height: 16.h,),
              Text('وصف الدرس', style: AppStyles.textStyle16w700T),
              SizedBox(height: 9.h,),
              Text('يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر كهذا المثال. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر . '
                ,style:AppStyles.textStyle14w400FF.copyWith(
                  color: AppColors.kgray,
                  height: 1.7.h,
                ),),
              SizedBox(height: 22.h,),
              Text('شرح الفرق بين a و an و the بالتفصيل',
                style: AppStyles.textStyle14w700FF.copyWith(
                  color: AppColors.kplue
                ),
              )
              


            ],
          ),
        ),
      ),

    );
  }
}
