class QuestionModel {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  QuestionModel({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}
final List<QuestionModel> questions = [
  QuestionModel(
    question: 'نص السؤال هنا والذي عادة ما يتكون من عدة أسطر ؟',
    answers: ['نص الاجابة', 'نص الاجابة', 'نص الاجابة', 'نص الاجابة'],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: 'ما هي عاصمة فرنسا؟',
    answers: ['لندن', 'باريس', 'روما', 'مدريد'],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: 'ما هو جمع كلمة كتاب؟',
    answers: ['كتابين', 'مكتب', 'كتب', 'كتابة'],
    correctAnswerIndex: 2,
  ),
  QuestionModel(question: 'what is the capital of Egypt?',
      answers: ['cairo', 'alexandria', 'giza', 'aswan'],
      correctAnswerIndex: 3)
];
