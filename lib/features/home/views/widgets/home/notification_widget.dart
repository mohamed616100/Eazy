
import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/features/home/views/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MyNavigator.goTo(context, const NotificationView()),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/surface1.png"))),
        height: 34.h,
        width: 28.w,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, left: 18),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(90)),
          width: 6.w,
          height: 10.h,
          child: Center(
            child: Text(
              "3",
              style: TextStyle(
                  fontSize: 10,
                  color: AppColors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
