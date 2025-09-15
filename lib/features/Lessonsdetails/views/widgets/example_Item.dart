import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExampleItem extends StatelessWidget {
  final String text;

  const ExampleItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 20)),
           SizedBox(width: 10.w),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.right,
              style: AppStyles.textStyle14w400FF,
              textDirection: TextDirection.rtl,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
