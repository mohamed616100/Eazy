
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/features/home/views/widgets/home_grid_container.dart';
import 'package:flutter/material.dart';

class HomeGridWidget extends StatelessWidget {
  const HomeGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 9.82,
      mainAxisSpacing: 8,
      children: const [
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
      ],
    );
  }
}
