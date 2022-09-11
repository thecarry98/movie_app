import 'package:get/get.dart';
import 'package:movie_app/features/start/presentation/controller/start_page_controller.dart';
import 'package:movie_app/features/start/presentation/page/now_showing/controller/now_showing_page_controller.dart';

import '../../domain/usecase/get_now_showing_usecase.dart';

class StartPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.lazyPut(() => StartPageController(getNowShowing: Get.find()));
    Get.lazyPut(() => StartPageController());
    // Get.lazyPut(() => NowShowingPageController());
  }
}
