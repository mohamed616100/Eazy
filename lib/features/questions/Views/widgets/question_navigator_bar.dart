import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionNavigatorBar extends StatelessWidget {
  final int currentPage;
  final int totalQuestions;
  final Function() onNext;
  final Function() onPrevious;

  const QuestionNavigatorBar({
    super.key,
    required this.currentPage,
    required this.totalQuestions,
    required this.onNext,
    required this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    int start = (currentPage - 2).clamp(0, totalQuestions - 1);
    int end = (currentPage + 2).clamp(0, totalQuestions - 1);

    List<int> visibleIndexes = List.generate(end - start + 1, (i) => start + i);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            IconButton(
              onPressed: currentPage > 0 ? onPrevious : null,
              icon: CustomSvg(
                  width: 24.w,
                  height: 24.h,
                  color: currentPage > 0 ? AppColors.black : AppColors.gray,
                  path: AppIcons.arrow_frowerd), // ←
            ),
            ...visibleIndexes.map((index) {
              final isActive = index == currentPage;
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                width: 33.w,
                height: 33.h,
                decoration: BoxDecoration(
                  color: isActive ? AppColors.orange : AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }),

            IconButton(
              onPressed: currentPage < totalQuestions - 1 ? onNext : null,
              icon: CustomSvg(
                width: 24.w,
                height: 24.h,
                path: AppIcons.arrowBack,
                color: currentPage < totalQuestions - 1 ? AppColors.black : AppColors.gray,),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            'أنهيت ${currentPage + 1} من $totalQuestions',
            style: AppStyles.textStyle12w400FF.copyWith(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
