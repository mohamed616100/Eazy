
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appImages.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/features/home/manager/slider_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({super.key, this.button});
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154.h,
      width: double.infinity,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              context.read<SliderCubit>().changeIndex(index);
            },
            children: [
              _buildImageSlide(Appimages.lessonsImage),
              _buildImageSlide(Appimages.lessonsImage),
            ],
          ),
          button ?? const SizedBox(),
        ],
      ),
    );
  }

  Widget _buildImageSlide(String image) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        Positioned(
          left: 20.w,
          top: 20.h,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'اشترك',
                  style: AppStyles.textStyle13_19w400
                      .copyWith(color: AppColors.white),
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: 'بخصم 20%\n',
                  style: AppStyles.textStyle16_49w400
                      .copyWith(color: AppColors.blue),
                ),
                TextSpan(
                  text: 'وتعلم جميع الدروس\nعلى',
                  style: AppStyles.textStyle13_19w400
                      .copyWith(color: AppColors.white),
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: 'إيزي',
                  style: AppStyles.textStyle28_58w400
                      .copyWith(color: AppColors.blue),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
