import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';

import 'package:eazy_app/features/Lessons/Views/widgets/describtion_list_view.dart';
import 'package:eazy_app/features/Lessons/Views/widgets/description_widget.dart';
import 'package:eazy_app/features/Lessons/Views/widgets/image_Start_widget.dart';
import 'package:eazy_app/features/Lessons/manager/lesson_cubit/cubit.dart';
import 'package:eazy_app/features/Lessonsdetails/views/Lessons_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LessonsView extends StatelessWidget {
  const LessonsView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LessonsCubit(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: AppPaddings.mainPadding,
          child: CustomScrollView(
              slivers: [
              SliverToBoxAdapter(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAppBar(
                    onPressed: () {
                     MyNavigator.goBack(context);
                    },
                  ),
                  SizedBox(height: 13.h,),
                  ImageStartWidget(
                      Buttom: Positioned(
                          top: 151.h,
                          left: 32.w,
                          child: CustomBtn(
                              text: 'ابدأ الدرس الاول',
                              onPressed: () {
                                MyNavigator.goTo(context, LessonsDetailsView(),
                                    type:NavigatorType.push);
                              },
                              width: 291.w,
                              height: 52.h
                          )
                      )
                  ),
                  SizedBox(height: 24.h,),
                  Text('القواعد', style: AppStyles.textStyle18w700),
                  SizedBox(height: 16.h,),
                  Text('الوصف', style: AppStyles.textStyle16w700T),
                  SizedBox(height: 9.h,),
                  DescriptionWidget(),
                  SizedBox(height: 16.h,),
                  Divider(
                    color: AppColors.gray,
                    thickness: 1.h,
                  ),
                  SizedBox(height: 9.h,),
                  Text('الدروس', style: AppStyles.textStyle18w700),
                  SizedBox(height: 16.h,),
                ],
                ),
              ),
                DescribtionListView(),
                SliverToBoxAdapter(
                  child: SizedBox(height: 30.h,)
                ),
          ]
          ),
        ),
      ),
    );
  }
}
