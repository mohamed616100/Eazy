import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:flutter/material.dart';

class EasyText extends StatelessWidget {
  const EasyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        
      ),
      child: RichText(
        text: TextSpan(
          children: [
            // حرف E - أزرق فاتح
            TextSpan(
              text: 'E',
              style: AppStyles.textStyle23_6w400.copyWith(
                color: AppColors.blue
              )
            ),
            // حرف a - أزرق
            TextSpan(
              text: 'a',
              style: AppStyles.textStyle23_6w400.copyWith(
                color: AppColors.black
              )
            ),
            // حرف z - أزرق داكن
            TextSpan(
              text: 'z',
              style:AppStyles.textStyle23_6w400.copyWith(
                color: AppColors.blue
              )
            ),
            // حرف y - برتقالي
            TextSpan(
              text: 'y',
              style: AppStyles.textStyle23_6w400.copyWith(
                color: AppColors.orange
              )
            ),
          ],
        ),
      ),
    );
  }
}
