import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SalaryWidget extends StatelessWidget {
  const SalaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '79 د.ل',
                style: AppStyles.textStyle14w700FF.copyWith(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: AppColors.red,
                  color: AppColors.red,
                  decorationThickness: 2,
                ),
              ),
              const SizedBox(width: 15),
              Text(
                  '70 د.ل',
                  style:AppStyles.textStyle14w700FF
              ),
            ],
          ),
          Text(
              'السعر',
              style: AppStyles.textStyle14w700FF
          ),
        ],
      ),
    );
  }
}
