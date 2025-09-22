import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:eazy_app/core/widgets/textField.dart';
import 'package:eazy_app/features/password/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(children: [
        CustomAppBar(title: "تغير كلمة المرور",),
        SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: "كلمة المرور القديمة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.gray3,),),
         SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: " كلمة المرور الجديدة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.gray3,)),
         SizedBox(height: MediaQuery.of(context).size.height/40,),
        CustomTextField(hintText: "اعادة ادخال كلمة المرور الجديدة", controller: TextEditingController(),prefixIcon: CustomSvg(path: AppIcons.eyeOn,width: 15.w,height: 15.h,color: AppColors.gray3,)),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Padding(
             padding: const EdgeInsets.only(right: 20,top: 15),
             child: GestureDetector(
              onTap: () => MyNavigator.goTo(context, ForgetPassword()),
              child: Text(" نسيت كلمة السر ؟",style: AppStyles.textStyle12w400FF.copyWith(color: AppColors.firstQus),)),
           ),
         ],
       ),
       Spacer(flex: 7,),
        CustomBtn(
         height: 48.h,
          width: 335.w,
        text: "حفظ التعديلات", onPressed: (){}),
        Spacer(flex: 1,),
      ],),
    );
  }
}