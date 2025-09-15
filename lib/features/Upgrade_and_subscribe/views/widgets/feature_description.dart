import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FeatureDescription extends StatelessWidget {
  const FeatureDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal:20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('وصف الميزة هنا',
            style:AppStyles.textStyle14w400FF,),
          SizedBox(width: 10.w,),
          CustomSvg(path: AppIcons.checkIcon),
        ],
      ),
    );
  }
}
