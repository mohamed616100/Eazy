import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/features/home/manager/search_cubit.dart';
import 'package:eazy_app/features/home/views/all_categories_view.dart';
import 'package:eazy_app/features/home/views/search_view.dart';
import 'package:eazy_app/features/home/views/widgets/home/bold_text_widget.dart';
import 'package:eazy_app/features/home/views/widgets/home/eazy_word.dart';
import 'package:eazy_app/features/home/views/widgets/home/notification_widget.dart';
import 'package:eazy_app/features/home/views/widgets/home/regular_text_widget.dart';
import 'package:eazy_app/features/home/views/widgets/home/search_widget.dart';
import 'package:eazy_app/features/home/views/widgets/home/slider/slider_section.dart';
import 'package:eazy_app/features/home/views/widgets/home_grid_widget.dart';
import 'package:eazy_app/features/home/views/widgets/prograss_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPaddings.homeBodyPadding,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Row(
                children: [
                  NotificationWidget(),
                  const Spacer(),
                  EazyWord(),
                ],
              ),
              SizedBox(height: 27.h),
              BlocProvider(
                create: (_) => SearchCubit(),
                child: SearchWidget(
                  isClickable: true,
                  onTap: () {
                    MyNavigator.goTo(context, const SearchView());
                  },
                ),
              ),
              SizedBox(height: 14.h),
              const HomeBoldText(text: 'أحدث العروض'),
              SizedBox(height: 12.h),
              const SliderSection(),
              SizedBox(height: 17.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () =>
                        MyNavigator.goTo(context, const AllCategoriesView()),
                    child: const HomeRegularText(text: 'المزيد'),
                  ),
                  const Spacer(),
                  const HomeBoldText(text: 'الأقسام'),
                ],
              ),
              SizedBox(height: 12.h),
              const HomeGridWidget(),
              SizedBox(height: 19.h),
              const HomeBoldText(text: 'أستكمل دروسك'),
              SizedBox(height: 12.h),
              const PrograssWidget()
            ]),
          ),
        ),
      ),
    );
  }
}
