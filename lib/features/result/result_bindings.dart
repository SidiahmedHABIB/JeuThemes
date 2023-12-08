import 'package:get/get.dart';

class ResultBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => DrawerViewModel());
    // Get.lazyPut<InterventionRepository>(
    //   () => InterventionRepositoryImp(Get.find(), Get.find()),
    // );
    // Get.lazyPut(() => HomeViewModel(Get.find(), Get.find()));
    // Get.lazyPut(() => NetworkChecker());
  }
}
