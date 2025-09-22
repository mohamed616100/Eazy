
import 'package:eazy_app/features/Lessons/data/models/demo_data.dart';
import 'package:eazy_app/features/home/views/widgets/lessons/home_lesson_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyLessonsWidget extends StatelessWidget {
  MyLessonsWidget({super.key});
  List<datalessons> datalessonsList = [
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الثاني - الوظائف',
        description: 'قسم الكلمات',
        subScription: false),
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الثاني - الوظائف',
        description: 'قسم الكلمات',
        subScription: false),
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الثاني - الوظائف',
        description: 'قسم الكلمات',
        subScription: false),
    datalessons(
        isSave: true,
        isblock: false,
        title: 'الدرس الثاني - الوظائف',
        description: 'قسم الكلمات',
        subScription: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, item) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 13.h),
          child: HomeLessonItem(
            data: datalessonsList[item],
          ),
        );
      },
      itemCount: datalessonsList.length,
    );
  }
}
