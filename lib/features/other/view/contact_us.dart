import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appImages.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/core/widgets/textField.dart';
import 'package:eazy_app/features/other/view/widget/social_icons_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // الحواف مستديرة
          ),
          content: SizedBox(
            width: 110.w,
            height: 197.h,
            child: Column(
              children: [
                Image.asset(Appimages.Success),
                SizedBox(height: 10,),
                Text(
                  "تم ارسال رسالتك",
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyle18w400,
                ),
              ],
            ),
          ),
          actionsAlignment: MainAxisAlignment.center, // يخلي الزرار في النص
          actions: [
            CustomBtn(text: "تم", onPressed: () => MyNavigator.goBack(context), width: 298.w, height: 51.h ,)
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    var nameControlaller = TextEditingController();
    var phoneControlaller = TextEditingController();
    var notesControlaller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8.h,),
             const CustomAppBar(title: "تواصل معانا",),
              SizedBox(height: 79.h,),
              CustomTextField(hintText: "الاسم",controller: nameControlaller),
              SizedBox(height: 22.h,),
              CustomTextField(hintText: "رقم الهاتف / البريد الالكتروني",controller: phoneControlaller),
              SizedBox(height: 22.h,),
              CustomTextField(hintText: "ادخل الملاحظات",controller: notesControlaller , maxLines: 4,height: 141.h,width: 340.w,),
              SizedBox(height: 46.h,),
              Text("او تواصل معانا" , style: AppStyles.textStyle14w400C,),
              SizedBox(height: 13.h,),
              SocialIconsRow(),
              SizedBox(height: 120.h,),
              CustomBtn(height: 51.h,width: 340.w,text: "ارسل",onPressed: () {
                 _showAlertDialog(context);
              },),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
