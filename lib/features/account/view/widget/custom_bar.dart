
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appImages.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/features/account/view/widget/custom_easyText.dart';
import 'package:eazy_app/features/home/views/widgets/home/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:62.h ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NotificationWidget(),
        Padding(
          padding: const EdgeInsets.only(bottom: 25,left: 35),
          child: Container(
            height: 25.h,
            width: 70.w,
            child: Center(
              child: Text("حسابي",
              style: AppStyles.textStyle18w400
              ),
            ),
          ),
        ),
         EasyText()

      ],
      ),
    );
  }
}