import 'package:eazy_app/core/utils/App_color.dart';
import 'package:eazy_app/core/utils/App_style.dart';
import 'package:eazy_app/features/Lessons/manager/lesson_cubit/cubit.dart';
import 'package:eazy_app/features/Lessons/manager/lesson_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LessonsCubit, LessonsStates>(
      builder: (context, state) {
        bool expand = false;
        if (state is LessonsExpand) {
          expand = state.expand;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر كهذا المثال. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر كهذا المثال. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر ",
              maxLines: expand ? null : 3,
              overflow: expand ? TextOverflow.visible : TextOverflow.fade,
              style: AppStyles.textStyle14w400FF.copyWith(
                color: AppColors.kgray,
                height: 1.7.h,
              ),
            ),
            InkWell(
              onTap: () => LessonsCubit.get(context).toggleExpand(),
              child: Text(
                expand ? "إقرأ أقل" : "  المزيد... ",
                style: AppStyles.textStyle14w400FF.copyWith(
                  color: AppColors.kplue,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
