
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:eazy_app/features/home/data/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;
  final bool isRead;
  const NotificationItem(
      {super.key, required this.notification, required this.isRead});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        Container(
          width: 9.w,
          height: 9.w,
          decoration: BoxDecoration(
            color: isRead ? AppColors.orange : Colors.transparent,
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.only(left: 8.w),
        ),
        Expanded(
          child: Container(
            width: 359.w,
            height: 112.h,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
                color: AppColors.white2,
                borderRadius: BorderRadius.circular(15.98.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        notification.title,
                        textDirection: TextDirection.rtl,
                        style: AppStyles.textStyle12w400FF
                            .copyWith(color: AppColors.notificationName),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        notification.description,
                        textDirection: TextDirection.rtl,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.textStyle12w400FF
                            .copyWith(color: AppColors.gray),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 12.w),
                Container(
                  width: 64.85.w,
                  height: 64.85.h,
                  decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(22.55.r)),
                  child: IconButton(
                    onPressed: () {},
                    icon: CustomSvg(
                      path: AppIcons.billIcon,
                      width: 28.29.w,
                      height: 28.29.h,
                      color: AppColors.white2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
