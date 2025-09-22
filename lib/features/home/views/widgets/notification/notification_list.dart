
import 'package:eazy_app/features/home/data/model/notification_model.dart';
import 'package:eazy_app/features/home/views/widgets/notification/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationList extends StatelessWidget {
  NotificationList({super.key});

  final List<NotificationModel> notifications = [
    NotificationModel(
        title: 'اسم الاشعار',
        description:
            'تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا.',
        isRead: true),
    NotificationModel(
        title: 'اسم الاشعار',
        description:
            'تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا.',
        isRead: false),
    NotificationModel(
        title: 'اسم الاشعار',
        description:
            'تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا.',
        isRead: false),
    NotificationModel(
        title: 'اسم الاشعار',
        description:
            'تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا.',
        isRead: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: notifications.length,
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        return NotificationItem(
          notification: notifications[index],
          isRead: notifications[index].isRead,
        );
      },
    );
  }
}
