import 'package:flutter_bloc/flutter_bloc.dart';

class TabState {
  final int currentIndex;

  TabState({required this.currentIndex});
}

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(TabState(currentIndex: 0));

  void changeTab(int index) {
    emit(TabState(currentIndex: index));
  }

  void goToHome() {
    emit(TabState(currentIndex: 0));
  }
}