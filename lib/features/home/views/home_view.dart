
import 'package:eazy_app/core/widgets/bottomNavBar/bottom_nav_bar.dart';
import 'package:eazy_app/features/account/view/account.dart';
import 'package:eazy_app/features/home/manager/tab_cubit.dart';
import 'package:eazy_app/features/home/views/my_lessons_view.dart';
import 'package:eazy_app/features/home/views/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static final List<Widget> _pages = [
    const HomeBody(),
    const MyLessonsView(),
     const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, TabState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: _pages[state.currentIndex], 
          bottomNavigationBar: Directionality(
            textDirection: TextDirection.rtl,
            child: BottomNavBar(
              currentIndex: state.currentIndex,
              onTap: (index) => context.read<TabCubit>().changeTab(index),
              onCenterTap: () => context.read<TabCubit>().goToHome(),
            ),
          ),
        );
      },
    );
  }
}