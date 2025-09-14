import 'package:eazy_app/core/utils/App_icons.dart';
import 'package:eazy_app/features/Lessons/Views/Lessons_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) =>MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LessonsView()
        ));
  }
}
