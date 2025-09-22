import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/features/Lessons/data/models/demo_data.dart';
import 'package:eazy_app/features/Lessons/manager/lesson_cubit/cubit.dart';
import 'package:eazy_app/features/home/views/widgets/lessons/home_lesson_item.dart';
import 'package:eazy_app/features/questions/Views/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrograssWidget extends StatelessWidget {
  const PrograssWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.w,
      height: 155.h,
      decoration: BoxDecoration(
        color: AppColors.containerHome,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: BlocProvider(
        create: (context) => LessonsCubit(),
        child: Column(children: [
          HomeLessonItem(
            data: datalessons(
              isSave: true,
              isblock: false,
              title: 'الفرق بين {a-an}',
              description: '4 اسئلة تقييم وتمارين',
              icon: AppIcons.timerIcon,
              description2: '5 دقائق',
              subScription: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 16,bottom: 5),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    MyNavigator.goTo(context, QuizPage(),type: NavigatorType.push);

          },child: Container(
                    width: 111.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: Text('استكمل',
                          style: AppStyles.textStyle12w700
                              .copyWith(color: AppColors.white)),
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: LinearProgressIndicator(
                      value: 0.15, // النسبة (من 0.0 إلى 1.0)
                      backgroundColor: AppColors.progressHome,
                      color: AppColors.iconSave,
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
