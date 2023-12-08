import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jeu_themes/config/model/color_palette_model.dart';
import 'package:jeu_themes/config/model/quiz_model.dart';
import '../../config/resources/strings_manager.dart';
import '../../config/routing/routes_manager.dart';

class QuizViewModel extends GetxController {
  // list means quis data
  List<QuizModel> dataBase = [
    QuizModel(
      id: 0,
      question: StringsManager.q_one_question.tr,
      choiceOne: StringsManager.q_one_choiceone.tr,
      choiceTwo: StringsManager.q_one_choicetwo.tr,
      choiceTree: StringsManager.q_one_choicetree.tr,
      response: StringsManager.q_one_false.tr,
    ),
    QuizModel(
      id: 1,
      question: StringsManager.q_two_question.tr,
      choiceOne: StringsManager.q_two_choiceone.tr,
      choiceTwo: StringsManager.q_two_choicetwo.tr,
      choiceTree: StringsManager.q_two_choicetree.tr,
      response: StringsManager.q_two_false.tr,
    ),
    QuizModel(
      id: 2,
      question: StringsManager.q_three_question.tr,
      choiceOne: StringsManager.q_three_choiceone.tr,
      choiceTwo: StringsManager.q_three_choicetwo.tr,
      choiceTree: StringsManager.q_three_choicetree.tr,
      response: StringsManager.q_three_false.tr,
    ),
    QuizModel(
      id: 3,
      question: StringsManager.q_four_question.tr,
      choiceOne: StringsManager.q_four_choiceone.tr,
      choiceTwo: StringsManager.q_four_choicetwo.tr,
      choiceTree: StringsManager.q_four_choicetree.tr,
      response: StringsManager.q_four_false.tr,
    ),
    QuizModel(
      id: 4,
      question: StringsManager.q_five_question.tr,
      choiceOne: StringsManager.q_five_choiceone.tr,
      choiceTwo: StringsManager.q_five_choicetwo.tr,
      choiceTree: StringsManager.q_five_choicetree.tr,
      response: StringsManager.q_five_false.tr,
    ),
    QuizModel(
      id: 5,
      question: StringsManager.q_six_question.tr,
      choiceOne: StringsManager.q_six_choiceone.tr,
      choiceTwo: StringsManager.q_six_choicetwo.tr,
      choiceTree: StringsManager.q_six_choicetree.tr,
      response: StringsManager.q_six_false.tr,
    ),
    QuizModel(
      id: 6,
      question: StringsManager.q_seven_question.tr,
      choiceOne: StringsManager.q_seven_choiceone.tr,
      choiceTwo: StringsManager.q_seven_choicetwo.tr,
      choiceTree: StringsManager.q_seven_choicetree.tr,
      response: StringsManager.q_seven_false.tr,
    ),
    QuizModel(
      id: 7,
      question: StringsManager.q_eight_question.tr,
      choiceOne: StringsManager.q_eight_choiceone.tr,
      choiceTwo: StringsManager.q_eight_choicetwo.tr,
      choiceTree: StringsManager.q_eight_choicetree.tr,
      response: StringsManager.q_eight_false.tr,
    ),
    QuizModel(
      id: 8,
      question: StringsManager.q_nine_question.tr,
      choiceOne: StringsManager.q_nine_choiceone.tr,
      choiceTwo: StringsManager.q_nine_choicetwo.tr,
      choiceTree: StringsManager.q_nine_choicetree.tr,
      response: StringsManager.q_nine_false.tr,
    ),
    QuizModel(
      id: 9,
      question: StringsManager.q_ten_question.tr,
      choiceOne: StringsManager.q_ten_choiceone.tr,
      choiceTwo: StringsManager.q_ten_choicetwo.tr,
      choiceTree: StringsManager.q_ten_choicetree.tr,
      response: StringsManager.q_ten_false.tr,
    ),
  ];
  // list of background color palette
  List<ColorPaletteModel> quizColors = [
    ColorPaletteModel(
      id: 0,
      lightColor: Colors.green,
      darkColor: Colors.green.shade700,
    ),
    ColorPaletteModel(
      id: 1,
      lightColor: const Color(0xFF4AB844),
      darkColor: const Color(0xFF439C34),
    ),
    ColorPaletteModel(
      id: 2,
      lightColor: const Color(0xFF77CA32),
      darkColor: const Color(0xFF55A030),
    ),
    ColorPaletteModel(
      id: 3,
      lightColor: const Color(0xFFA0D626),
      darkColor: const Color(0xFF99AC24),
    ),
    ColorPaletteModel(
      id: 4,
      lightColor: const Color(0xFFE4DF1D),
      darkColor: const Color(0xFFB5B11B),
    ),
    ColorPaletteModel(
      id: 5,
      lightColor: const Color(0xFFE8D914),
      darkColor: const Color(0xFFBEAA12),
    ),
    ColorPaletteModel(
      id: 6,
      lightColor: const Color(0xFFEFCE0D),
      darkColor: const Color(0xFFC39C0D),
    ),
    ColorPaletteModel(
      id: 7,
      lightColor: const Color(0xFFF5C807),
      darkColor: const Color(0xFFC89608),
    ),
    ColorPaletteModel(
      id: 8,
      lightColor: const Color(0xFFF9C403),
      darkColor: const Color(0xFFCE9402),
    ),
    ColorPaletteModel(
      id: 9,
      lightColor: Colors.amber,
      darkColor: Colors.amber.shade700,
    ),
  ];

  int backgroundColorIndex = 0;

  List<QuizModel> quizList = [];
  // quiz index in the quizList
  int quizIndex = 0;
  // quiz index in the quizList
  int quizlength = 10;
  // quiz index in the quizList
  double quizStep = 0.1;
  // quiz selected response
  String selectedResponse = "";

  List<bool> quizResponsesList = [];

  bool activeQuizeOne = false;
  bool activeQuizeTwo = false;
  bool activeQuizeTree = false;
  bool activeButton = false;

  @override
  void onInit() {
    super.onInit();
    handleCreateQuize();
  }

  Future<void> handleCreateQuize() async {
    quizList.clear();
    List<int> indices = List.generate(dataBase.length, (index) => index);
    indices.shuffle();
    for (int i = 0; i < quizlength; i++) {
      int randomIndex = indices[i];
      quizList.add(dataBase[randomIndex]);
    }
    // quizList.forEach((quiz) {
    //   print("list id : ${quiz.response} Quiz id: ${quiz.id}");
    // });
  }

  Future<void> handleActiveQuize(int index, String selectedResp) async {
    if (index == 0) {
      selectedResponse = "";
      selectedResponse = selectedResp;
      activeQuizeOne = true;
      activeQuizeTwo = false;
      activeQuizeTree = false;
      activeButton = true;
      update();
    } else if (index == 1) {
      selectedResponse = "";
      selectedResponse = selectedResp;
      activeQuizeOne = false;
      activeQuizeTwo = true;
      activeQuizeTree = false;
      activeButton = true;
      update();
    } else if (index == 2) {
      selectedResponse = "";
      selectedResponse = selectedResp;
      activeQuizeOne = false;
      activeQuizeTwo = false;
      activeQuizeTree = true;
      activeButton = true;
      update();
    }
  }

  Future<void> handleResetQuize() async {
    activeQuizeOne = false;
    activeQuizeTwo = false;
    activeQuizeTree = false;
    activeButton = false;
    update();
  }

  Future<void> handleNextQuize(QuizModel selectedQuiz) async {
    if (quizIndex < quizlength - 1) {
      quizIndex += 1;
      update();
      handleScoreQuize();
      handleResetQuize();
      handlechangeBackgroundColor(selectedQuiz);
      handleCalCulQuizScore(selectedQuiz);
    } else {
      print("quizScore: ${quizResponsesList.length}");
      Get.offNamed(RoutesManager.getResultScreen(quizResponsesList.length + 1));
    }
  }

  Future<void> handleScoreQuize() async {
    quizStep += 0.1;
    update();
  }

  Future<void> handlechangeBackgroundColor(QuizModel selectedQuiz) async {
    if (selectedResponse == selectedQuiz.response && backgroundColorIndex > 0) {
      backgroundColorIndex += 1;
      update();
    } else if (selectedResponse != selectedQuiz.response) {
      backgroundColorIndex += 1;
      update();
    }
  }

  Future<void> handleCalCulQuizScore(QuizModel selectedQuiz) async {
    quizResponsesList.add((selectedQuiz.response != selectedResponse) == true);
  }
}
