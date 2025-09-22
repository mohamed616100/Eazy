
import 'package:eazy_app/features/Lessons/manager/lesson_cubit/cubit.dart';
import 'package:eazy_app/features/home/manager/tab_cubit.dart';
import 'package:eazy_app/features/splash&onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TabCubit()),
          BlocProvider(create: (context) => LessonsCubit())
        ],
        child: ScreenUtilInit(
            designSize: const Size(393, 852),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) => MaterialApp(
                debugShowCheckedModeBanner: false, home:  SplashScreen())));
  }
}
