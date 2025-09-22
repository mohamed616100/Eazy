
import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:eazy_app/features/Upgrade/views/upgrade_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subascrib extends StatelessWidget {
  const Subascrib({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: (){
              MyNavigator.goTo(context, UpgradeView(),type: NavigatorType.push);
            },
            child: Container(
              decoration: BoxDecoration(
              color: Color.fromARGB(98, 228, 209, 61),
                borderRadius: BorderRadius.circular(16.r)
              ),
              height: 54.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text("الترقية إلي النسخة المميزة",
                    style: AppStyles.textStyle14w700FF.copyWith(
                      color: AppColors.orange
                    )
                    ),
                  ],),
                  SizedBox(width: 10.w,),
              CustomSvg(path: AppIcons.crownIcon)
              ],),
            ),
          ),
        );
  }
}