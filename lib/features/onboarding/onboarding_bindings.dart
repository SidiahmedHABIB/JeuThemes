import 'package:get/get.dart';
import 'package:jeu_themes/features/onboarding/onboarding_view_model.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingViewModel());
  }
}
