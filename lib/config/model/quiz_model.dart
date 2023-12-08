class QuizModel {
  int id;
  String question;
  String response;
  String choiceOne;
  String choiceTwo;
  String choiceTree;
  QuizModel({
    required this.id,
    required this.response,
    required this.question,
    required this.choiceOne,
    required this.choiceTwo,
    required this.choiceTree,
  });
}
