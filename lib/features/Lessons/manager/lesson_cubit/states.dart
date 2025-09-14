abstract class LessonsStates {}

class LessonInitial extends LessonsStates {}

class LessonsExpand extends LessonsStates {
  final bool expand;
  LessonsExpand({this.expand = false});

  LessonsExpand copyWith({bool? expand}) {
    return LessonsExpand(expand: expand ?? this.expand);
  }
}

class LessonsSave extends LessonsStates {}