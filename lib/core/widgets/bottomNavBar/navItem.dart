
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';

// Navigation item widget for menu items
class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: selected ? const Color(0xFF2A72AD) : Colors.black,
            size: 23,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppStyles.textStyle12w400FF.copyWith(
              color: selected ? const Color(0xFF2A72AD) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}