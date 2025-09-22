

import 'package:flutter_bloc/flutter_bloc.dart';


class FaqCubit extends Cubit<int>{
  FaqCubit() : super(-1);

  void toggleQuestion(int id) {
    if (state == id) {
      emit(-1); // يقفل السؤال لو كان مفتوح
    } else {
      emit(id); // يفتح السؤال الجديد
    }
  }

}