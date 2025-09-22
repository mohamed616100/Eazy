import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/CustomButton.dart';
import 'package:eazy_app/core/widgets/CustomSvg.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/core/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(children: [
        CustomAppBar(title: "اعادة تعين كلمة المرور",),
        SizedBox(height: MediaQuery.of(context).size.height/40,),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 283.w, // أو قللها شوية لو عايز مسافة من اليسار
                child: Text(
                  "من فضلك أدخل كلمة المرور الجديدة وقم بتأكيد كلمة المرور",
                  style: AppStyles.textStyle14w400FF.copyWith(color: AppColors.gray),
                  textAlign: TextAlign.right,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: " كلمة المرور الجديدة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.gray3,)),
        SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: "اعادة ادخال كلمة المرور الجديدة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.gray3,)),
        Spacer(flex: 7,),
        CustomButton(
            height: 48.h,
            width: 335.w,
            text: "تحديث كلمة المرور", onPressed: (){}),
        Spacer(flex: 1,),
      ],),
    );
  }
}