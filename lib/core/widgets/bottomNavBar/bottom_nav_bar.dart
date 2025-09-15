
import 'package:eazy_app/core/widgets/bottomNavBar/bottom_nav_bar_painter.dart';
import 'package:eazy_app/core/widgets/bottomNavBar/center_button.dart';
import 'package:eazy_app/core/widgets/bottomNavBar/navItem.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final VoidCallback onCenterTap;
  final double centerButtonBottom;
  final double navItemsAlignmentY;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.onCenterTap,
    this.centerButtonBottom = 60,
    this.navItemsAlignmentY = 0.5,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavBarPainter(currentIndex: currentIndex),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(left: 56, right: 56),
              child: Align(
                alignment: Alignment(0, navItemsAlignmentY.clamp(-1.0, 1.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavItem(
                      icon: Icons.menu_book_rounded,
                      label: 'دروسي',
                      selected: currentIndex == 1,
                      onTap: () => onTap(1),
                    ),
                    NavItem(
                      icon: Icons.person_outline,
                      label: 'حسابي',
                      selected: currentIndex == 2,
                      onTap: () => onTap(2),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: centerButtonBottom,
            child: CenterButton(
              selected: currentIndex == 0,
              onTap: onCenterTap,
            ),
          ),
        ],
      ),
    );
  }
}