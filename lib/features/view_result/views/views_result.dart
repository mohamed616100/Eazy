import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/features/questions/data/question_model.dart';
import 'package:eazy_app/features/result/views/widgets/continer_result.dart';
import 'package:eazy_app/features/view_result/views/widgets/item_answer_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class view_result extends StatelessWidget {
  const view_result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding:  AppPaddings.mainPadding,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                title: 'النتائج',
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 30.h,)),
            SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  height: 33.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 33.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: questions.length,
                          itemBuilder: (context, index) {
                            return ContinerResult(
                              text: (index + 1).toString(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 30.h,)),
            ItemAnswerListview()

          ],
        ),
      ),
    );
  }
}
