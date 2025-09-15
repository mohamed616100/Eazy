import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/features/Lessons/Views/lessons_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ShowDilaogWidget extends StatelessWidget {
  const ShowDilaogWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.mainPadding,
      child: SizedBox(
        width: double.infinity,
        height: 250.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 39.h),
             Text(
              'الخروج من الدرس',
              style: AppStyles.textStyle18w400,
              textAlign: TextAlign.center,
            ),
             SizedBox(height: 10.h),
             Text(
              'هل تود الخروج من الدرس؟ يمكنك الرجوع في أي وقت',
              style: AppStyles.textStyle18w400.copyWith(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                Expanded(
                  child:CustomBtn(
                      text: 'تراجع',
                      onPressed: (){
                        MyNavigator.goBack(context);
                      },
                      width: double.infinity
                      , height: 57.h,
                    colorbut: AppColors.gray,

                  )
                ),
                const SizedBox(width: 10),
                Expanded(
                  child:CustomBtn(
                    text: 'نعم',
                    onPressed: (){
                      Navigator.of(context).pop();
                      MyNavigator.goTo(
                        context,
                          const LessonsView(),
                      type: NavigatorType.pushReplacement,
                      );
                    },
                    width: double.infinity
                    , height: 57.h,

                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
