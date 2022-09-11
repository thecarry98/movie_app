import 'package:get/get.dart';

import '../../../routes.dart';

class SplashController extends GetxController {
  void onInit() {
    Future.delayed(Duration(seconds: 1), () {
      print('go to home');
      Get.toNamed(Routes.home);
    });
    // goToHome();
  }

  void goToHome() {
    Future.delayed(Duration(seconds: 1), () {
      print('go to home');
      Get.toNamed(Routes.home);
    });
  }
}
