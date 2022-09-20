import 'package:get/get.dart';
import 'package:movie_app/features/profile/presentation/controller/profile_controller.dart';
import 'package:movie_app/features/profile/presentation/controller/signup_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => SignupController());
  }
}
