import 'package:get/get.dart';
import 'package:jeu_themes/features/onboarding/onboarding_view.dart';
import 'package:jeu_themes/features/quiz/quiz_view.dart';
import 'package:jeu_themes/features/result/result_quiz_view.dart';
import '../../features/onboarding/onboarding_bindings.dart';
import '../../features/quiz/quiz_bindings.dart';
import '../../features/splash/splash_view.dart';

class RoutesManager {
  static const String splashScreen = "/Splash-Screen";
  static const String onboardingScreen = "/onboarding-Screen";
  static const String quizScreen = "/quiz-Screen";
  static const String resultScreen = "/result-Screen";

  static String getSplashScreen() => splashScreen;
  static String getOnboardingScreen() => onboardingScreen;
  static String getQuizScreen() => quizScreen;
  static String getResultScreen(int? score) => '$resultScreen?score=$score';

  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashView(),
    ),
    GetPage(
        name: onboardingScreen,
        page: () => const OnboardingView(),
        binding: OnboardingBinding()),
    GetPage(
      name: quizScreen,
      page: () => QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: resultScreen,
      page: () {
        var score = Get.parameters['score'];
        return ResultQuizView(score: int.parse(score!));
      },
      // binding: ProfileBinding(),
    ),
  ];
}
