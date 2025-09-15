import 'package:flutter/material.dart';

// Center button widget for home navigation
class CenterButton extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  const CenterButton({
    super.key,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 27,
        backgroundColor: selected ? const Color(0xFF2A72AD) : Colors.black,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}