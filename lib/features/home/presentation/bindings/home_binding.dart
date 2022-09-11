import 'package:get/get.dart';
import 'package:movie_app/features/home/presentation/controller/home_controller.dart';
import 'package:movie_app/features/start/presentation/controller/start_page_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
    // Get.lazyPut(() => StartPageController(getNowShowing: Get.find()));
    Get.lazyPut(() => StartPageController());
  }
}
