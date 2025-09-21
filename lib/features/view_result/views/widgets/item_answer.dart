import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:eazy_app/features/questions/data/question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemAnswer extends StatelessWidget {
  const ItemAnswer({super.key, required this.model,});
  final QuestionModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 407.h,
        color: AppColors.white,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        CustomSvg(path: AppIcons.multiplechoice,
                          height: 20.h,
                          width: 20.w,
                          color: AppColors.blue,
                        ),
                        SizedBox(width: 10.w),
                        Text('اختيار متعدد',style: AppStyles.textStyle14w400C.copyWith(
                          color: AppColors.blue,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    model.question,
                    style: AppStyles.textStyle20w400FF,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 24.h),
                  ...List.generate(model.answers.length, (answerIndex) {
                    final answer = model.answers[answerIndex];
                    return Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 18.w),
                        padding:EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
                        decoration: BoxDecoration(
                          color: model.correctAnswerIndex == answerIndex ? AppColors.blue : AppColors.red2,
                          borderRadius: BorderRadius.circular(11.r),
                        ),
                        child: Text(
                          answer,
                          textDirection: TextDirection.rtl,
                          style: AppStyles.textStyle14w400FF.copyWith(
                            color: model.correctAnswerIndex == answerIndex ? Colors.white : AppColors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                    );
                  }),
                ]
            )
        )

    );
  }
}
