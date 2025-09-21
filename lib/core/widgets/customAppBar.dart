import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/arrowBackButtom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Function()? onPressed;
  const CustomAppBar({super.key, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 62.h,),
      child: SizedBox(
        height: 40.h,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Text(
                title ?? "",
                style: AppStyles.textStyle18w400,
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: ArrowBackButton(
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
