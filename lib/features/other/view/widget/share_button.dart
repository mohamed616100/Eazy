import 'package:flutter/material.dart';


class ShareAppButton extends StatelessWidget {
  final String appLink;
  final String? subject;

  const ShareAppButton({
    super.key,
    required this.appLink,
    this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      icon: const Icon(Icons.share, color: Colors.white),
      label: const Text(
        "مشاركة التطبيق",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {

      },
    );
  }
}
