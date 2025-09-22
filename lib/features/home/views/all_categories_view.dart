import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/features/home/views/widgets/home/all_categories_grid.dart';
import 'package:flutter/material.dart';
class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            const CustomAppBar(
              title: 'الأقسام',
            ),
            const SizedBox(height: 55),
            AllCategoriesGrid()
          ],
        ),
      ),
    );
  }
}
