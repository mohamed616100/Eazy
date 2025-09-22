
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/features/account/view/widget/custom_easyText.dart';
import 'package:eazy_app/features/home/views/widgets/home/bold_text_widget.dart';
import 'package:eazy_app/features/home/views/widgets/lessons/my_lessons_widget.dart';
import 'package:eazy_app/features/home/views/widgets/prograss_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyLessonsView extends StatelessWidget {
  const MyLessonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: CustomScrollView(
          slivers: [
             SliverToBoxAdapter(
              child:Padding(
                padding: EdgeInsets.only(top: 62.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    HomeBoldText(text: 'دروسي'),
                    Align(
                      alignment: Alignment.centerRight,
                      child: EasyText(),
                    ),
                  ],
                ),
              ),
             ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24.h,
              ),
            ),
            SliverToBoxAdapter(child: PrograssWidget()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            MyLessonsWidget(),
          ],
        ),
      ),
    );
  }
}
