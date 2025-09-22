
import 'package:eazy_app/features/Lessons/Views/widgets/lessons_item.dart';
import 'package:eazy_app/features/Lessons/data/models/demo_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonsListView extends StatelessWidget {
 LessonsListView({super.key});
  List<datalessons> datalessonsList = [
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الأول',
        description: 'الوصف',
        subScription: true),
    datalessons(
        isSave: false,
        isblock: true,
        title: 'الدرس الثاني',
        description: 'الوصف',
        subScription: false),
    datalessons(
        isSave: false,
        isblock: false,
        title: 'الدرس الثالث',
        description: 'الوصف',
        subScription: false),
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الرابع',
        description: 'الوصف',
        subScription: true),
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الخامس',
        description: 'الوصف',
        subScription: false),
    datalessons(
        isSave: false,
        isblock: false,
        title: 'الدرس السادس',
        description: 'الوصف',
        subScription: true),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, item) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h),
          child: LessonsItem(
            data: datalessonsList[item],
          ),
        );
      },
      itemCount: datalessonsList.length,
    );
  }
}
