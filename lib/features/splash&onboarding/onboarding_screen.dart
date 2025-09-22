import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_cubit.dart';
import 'onboarding1_screen.dart';
import 'onboarding2_screen.dart';
import 'onboarding3_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: PageView(
        onPageChanged: (index) {
          context.read<OnboardingCubit>().changePage(index);
        },
        children: const [
          OnBoarding1(),
          OnBoarding2(),
          OnBoarding3(),
        ],
      ),
    );
  }
}
