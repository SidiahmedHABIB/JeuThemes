import 'package:get/get.dart';
import 'package:jeu_themes/features/quiz/quiz_view_model.dart';

class QuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizViewModel());
  }
}
