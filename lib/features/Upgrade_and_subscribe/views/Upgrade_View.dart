import 'dart:math' as math;

import 'package:eazy_app/core/utils/App_color.dart';
import 'package:flutter/material.dart';
class UpgradeView extends StatelessWidget {
  const UpgradeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kplue,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.kplue,
              AppColors.kplue,
            ],
          ),
        ),
      ),
    );
  }
}
