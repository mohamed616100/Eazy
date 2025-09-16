import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:eazy_app/features/Lessons/Views/Lessons_View.dart';
import 'package:eazy_app/features/result/views/widgets/continer_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResultView extends StatelessWidget {
  const ResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding:EdgeInsets.only(
          left: 40.h,
            right: 40.h
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    MyNavigator.goTo(context, LessonsView()
                        ,type: NavigatorType.pushReplacement);
                  },
                  icon: CustomSvg(
                    path:
                  AppIcons.close,
                    color: AppColors.gray,
                    width: 24.w,
                    height: 24.h,
                  ),
                )
              ],
            ),
            CustomSvg(path: AppIcons.success),
            Text('نتيجة الاختبار',style: AppStyles.textStyle18w700,),
            Container(
              width: double.infinity,
              height: 231.h,
              decoration: BoxDecoration(
                color: Color(0x122A72AD),
                borderRadius: BorderRadius.circular(10.r)
              ),child: Padding(
                padding:  EdgeInsets.only(top: 20.h,bottom: 25.h),
                child: Column(
                children: [
                  RichText(text:
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '3',style: AppStyles.textStyle12_54w400FF.copyWith(
                        fontSize: 50.sp,
                        color: AppColors.blue
                      )
                      )
                    ],
                    text: '4/',style: AppStyles.textStyle12_54w400FF.copyWith(
                    fontSize: 50.sp,
                    color: AppColors.black
                  )
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContinerResult(text: '4',),
                      ContinerResult(text: '3',),
                      ContinerResult(text: '2',),
                      ContinerResult(text: '1',),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:EdgeInsets.only(left:32.h,right: 26.h ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('4 اسئلة',
                                style: AppStyles.textStyle14w400C,
                              ),
                              Text('5 دقائق ',
                                style: AppStyles.textStyle14w400C.copyWith(
                                  color: AppColors.gray,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              print('object');
                            },
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 28.w,
                                  height: 28.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                      color: AppColors.orange,
                                  ),child: CustomSvg(path:
                                AppIcons.eyeOn,
                                  width: 17.w,
                                  height: 17.h,
                                  color: AppColors.white,
                                ),
                                ),
                                SizedBox(width: 5.w,),
                                Text('عرض الحلول',
                                  style: AppStyles.textStyle14w400C.copyWith(
                                    color: AppColors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                ),
              ),
            ),
            CustomBtn(
              text: 'انتقل للدرس الثاني',
              onPressed: (){
                MyNavigator.goTo(context, LessonsView(),
                    type: NavigatorType.pushReplacement);
              },
              width: double.infinity,
              height: 51.h,
            )
          ],
        ),
      ),
    );
  }
}
