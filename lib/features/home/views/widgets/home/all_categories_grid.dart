
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/features/home/views/widgets/home_grid_container.dart';
import 'package:flutter/material.dart';

class AllCategoriesGrid extends StatelessWidget {
  const AllCategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 9.82,
      mainAxisSpacing: 8,
      children: [
        HomeGridContainer(
          iconPath: AppIcons.listeningIcon,
          text: 'الاستماع',
        ),
        HomeGridContainer(
          iconPath: AppIcons.wordsIcon,
          text: 'كلمات',
        ),
        HomeGridContainer(
          iconPath: AppIcons.rulesIcon,
          text: 'القواعد',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.listeningIcon,
          text: 'الاستماع',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.wordsIcon,
          text: 'كلمات',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.rulesIcon,
          text: 'القواعد',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.listeningIcon,
          text: 'الاستماع',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.wordsIcon,
          text: 'كلمات',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.rulesIcon,
          text: 'القواعد',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.listeningIcon,
          text: 'الاستماع',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.wordsIcon,
          text: 'كلمات',
        ),
        const HomeGridContainer(
          iconPath: AppIcons.rulesIcon,
          text: 'القواعد',
        ),
      ],
    );
  }
}
