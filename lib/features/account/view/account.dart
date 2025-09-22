import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/features/account/view/widget/custom_bar.dart';
import 'package:eazy_app/features/account/view/widget/custom_icons.dart';
import 'package:eazy_app/features/account/view/widget/custom_profile.dart';
import 'package:eazy_app/features/account/view/widget/subascrib.dart';
import 'package:eazy_app/features/other/view/common_questions.dart';
import 'package:eazy_app/features/other/view/contact_us.dart';
import 'package:eazy_app/features/other/view/terms_and_condition.dart';
import 'package:eazy_app/features/other/view/widget/share_button.dart';
import 'package:eazy_app/features/subscripition/views/subscripition_view.dart';
import 'package:flutter/material.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            CustomBar(),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            CustomProfile(),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Subascrib(),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            CustomIcons(
              onTap: () => MyNavigator.goTo(context, SubscripitionView(),type: NavigatorType.push),
              image: AppIcons.subscriptionIcon,
              text: "الاشتراكات",
            ),
            CustomIcons(
              image: AppIcons.faqIcon,
              text: "الأسئلة الشائعة",
              onTap: () => MyNavigator.goTo(context, CommonQuestions(),type: NavigatorType.push),
            ),
            CustomIcons(
              image: AppIcons.conditionIcon,
              text: "الشروط والأحكام",
              onTap: () => MyNavigator.goTo(context, TermsAndCondition(),type: NavigatorType.push),
            ),
            CustomIcons(
              image: AppIcons.callIcon,
              text: "تواصل معانا",
              onTap: () => MyNavigator.goTo(context, ContactUs(),type: NavigatorType.push),
            ),
            CustomIcons(
              image: AppIcons.shareIcon,
              text: "مشاركة التطبيق",
              onTap: () => MyNavigator.goTo(
                context,
                ShareAppButton(appLink: ""),
                type: NavigatorType.push,
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Text(
              "تسجيل الخروج",
              style: AppStyles.textStyle14w400FF.copyWith(
                color: AppColors.KeyePass,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
          ],
        ),
      ),
    );
  }
}
