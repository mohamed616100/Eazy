import 'package:eazy_app/features/Lessons/manager/lesson_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LessonsCubit extends Cubit<LessonsStates>{
  LessonsCubit():super(LessonInitial());
  bool isSave=false;
  static LessonsCubit get(context)=>BlocProvider.of(context);
  void toggleExpand() {
    if (state is LessonsExpand) {
      final current = state as LessonsExpand;
      emit(current.copyWith(expand: !current.expand));
    } else {
      emit(LessonsExpand(expand: true));
    }
  }
  void toggleSave() {
    isSave=!isSave;
    emit(LessonsSave());
  }
}