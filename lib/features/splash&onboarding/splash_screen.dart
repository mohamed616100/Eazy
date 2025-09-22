import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/features/splash&onboarding/widgets/text_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'background.dart';
import 'onboarding1_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        MyNavigator.goTo(
          context,
          const OnBoarding1(),
          type: NavigatorType.pushReplacement,

        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashBackgroundWidget(),
          Center(child: TextSplash()),
          Positioned(
            top: 750.h,
            left: 183.w,
            width: 27.w,
            height: 27.h,
            child: const SpinKitFadingCircle(
              color: Colors.white,
              size: 27.0,
            ),
          ),
        ],
      ),
    );
  }
}
