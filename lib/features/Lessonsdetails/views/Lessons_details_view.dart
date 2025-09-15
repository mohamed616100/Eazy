import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/utils/appImages.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customAppBar.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:eazy_app/features/Lessons/Views/widgets/image_Start_widget.dart';
import 'package:eazy_app/features/Lessonsdetails/views/widgets/alarm_widget.dart';
import 'package:eazy_app/features/Lessonsdetails/views/widgets/build_paragraphs.dart';
import 'package:eazy_app/features/Lessonsdetails/views/widgets/example_Item.dart';
import 'package:eazy_app/features/Lessonsdetails/views/widgets/show_dilaog_widget.dart';
import 'package:eazy_app/features/questions/Views/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LessonsDetailsView extends StatefulWidget {
  const LessonsDetailsView({super.key,  this.showSheetOnOpen});
  final bool? showSheetOnOpen;

  @override
  State<LessonsDetailsView> createState() => _LessonsDetailsViewState();
}

class _LessonsDetailsViewState extends State<LessonsDetailsView> {
  final List<String> explanationParagraphs = [
    'قبل الشرح لازم نعرف حروف العلة أو الحروف المتحركة وهى (A-E-I-O-U). تأتي قبل الأسماء المفردة المعدودة، وقبل الوظيفة أو مجموعة معينة من الناس أو الجنسية.',
    'a مع الأرقام التي تعني "كل" مثل: a day.',
    'ولا نستخدم a أو an مع الأسماء المعنوية، وأسماء المعادن، وقبل الجمع أو الأسماء غير المعدودة.',
    'an أداة للنكرة التي تبدأ بحرف علة (A-E-I-O-U).',
    'a أداة للنكرة التي لا تبدأ بأحد حروف العلة أو الحروف المتحركة.',
    'نستخدم a قبل اسم مفرد معدود يبدأ بحرف ساكن.',
  ];

  final List<String> examples = [
    'إنها هدية. It’s a present.',
    'إنه يوم جميل. It’s a lovely day.',
    'هل أنت طبيب؟ Are you a doctor?',
    'أنا عندي بنت وولدين. I have got a daughter and two sons.',
  ];
  @override
  void initState() {
    super.initState();

    if (widget.showSheetOnOpen == true) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (_) {
            return ShowDilaogWidget();
          },
        );
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: Padding(
        padding:AppPaddings.mainPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomAppBar(
                onPressed: (){
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.r)),
                    ),
                    builder: (_) {
                      return ShowDilaogWidget();
                    },
                  );
                },
              ),
              SizedBox(height: 13.h,),
              ImageStartWidget(),
              SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSvg(path: AppIcons.saveIcon, width: 20.4.w,
                      height: 23.h, color: AppColors.gray
                  ),
                  Text('الفرق بين{a-an}',
                    textDirection: TextDirection.rtl,
                    style: AppStyles.textStyle20w400FF,),
                ],
              ),
              SizedBox(height: 16.h,),
              Text('وصف الدرس', style: AppStyles.textStyle16w700T),
              SizedBox(height: 9.h,),
              Text('يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر كهذا المثال. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر. يوضع هنا وصف الاختبار والذي عادة ما يتكون من عدة اسطر'
                ,textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                style:AppStyles.textStyle14w400FF.copyWith(
                  color: AppColors.gray,
                  height: 1.7.h,
                ),
              ),
              SizedBox(height: 22.h,),

              Text(
                'شرح الفرق بين a و an و the بالتفصيل',
                style:AppStyles.textStyle14w700FF.copyWith(
                  color: AppColors.blue,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 16.h,),
              BuildParagraphs(paragraphs: explanationParagraphs),
              SizedBox(height: 11.h,),
              Text(
                'أمثلة :',
                textAlign: TextAlign.right,
                style: AppStyles.textStyle14w400FF.copyWith(
                color: Color(0xffF28D1C)

              ),),
              ...examples.map((e) => ExampleItem(text: e)),
              SizedBox(height: 16.h,),
              AlarmWidget(
                title: 'انتبه',
                content: 'لا نستخدم a قبل الاسم الجمع وكذلك قبل الأسماء غير معدودة. نستخدم an قبل اسم مفرد معدود يبدأ بحرف متحرك.',
              ),
              SizedBox(height: 35.h,),
              Container(
                width: double.infinity,
                height: 215.h,
                decoration: BoxDecoration(
                  border:Border.all(color: AppColors.blue),
                  borderRadius: BorderRadius.circular(14.r),
                 image: DecorationImage(
                   fit: BoxFit.cover,
                     image: AssetImage(Appimages.alarmImage))
                ),
              ),
              SizedBox(height: 51.h,),
              CustomBtn(
                  text: 'انهي الدرس',
                  onPressed: (){
                    MyNavigator.goTo(context,
                        QuizPage(),type: NavigatorType.push);
                  },
                  width: double.infinity,
                  height: 51.h
              ),
              SizedBox(height: 50.h,),

            ],
          ),
        ),
      ),

    );
  }
}
