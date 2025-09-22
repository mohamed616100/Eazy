import 'package:flutter_bloc/flutter_bloc.dart';

class SliderCubit extends Cubit<int> {
  SliderCubit() : super(0);

  void changeIndex(int index) => emit(index);
}
