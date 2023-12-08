import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    //Get.lazyPut(() => LocalDataSource());
    // Get.put(QuizViewModel());

    //remote data source
    // Get.lazyPut(() => RemoteDataSource(appBaseUrl: AppConstants.BASE_URL));
    // //repository
    // Get.lazyPut(() => NetworkChecker());
    // Get.lazyPut<AuthRepository>(
    //   () => AuthRepositoryImp(Get.find(), Get.find(), Get.find()),
    // );
    // //splash
    // Get.put(SplashViewModel(Get.find()));

    // Get.put(BoxTableViewModel());
    // Get.lazyPut(() => BoxTableViewModel());
  }
}
