
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';

class MyLessonsEmpty extends StatelessWidget {
  const MyLessonsEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomSvg(
              path: AppIcons.No_notifications_lessons,
              width: 88,
              height: 88,
            ),
            const SizedBox(height: 24),
            Text('ليس لديك اشعارات جديدة حتي الآن',
                style: AppStyles.textStyle18w400
                    .copyWith(color: AppColors.iconlocal))
          ],
        ),
      ),
    );
  }
}
