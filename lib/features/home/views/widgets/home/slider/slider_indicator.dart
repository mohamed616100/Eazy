import 'package:eazy_app/core/utils/appColor.dart';
import 'package:flutter/material.dart';

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
  });

  final int activeIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 36,
        height: 11,
        decoration: BoxDecoration(
          color: AppColors.gray5,
          borderRadius: BorderRadius.circular(13.48),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(count, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 6.29,
              height: 6.29,
              decoration: BoxDecoration(
                color: activeIndex == index
                    ? AppColors.orangeHome
                    : AppColors.grayHome,
                borderRadius: BorderRadius.circular(13.48),
              ),
            );
          }),
        ),
      ),
    );
  }
}
