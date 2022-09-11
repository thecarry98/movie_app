import 'package:get/get.dart';
import 'package:movie_app/features/notification/presentation/controller/noti_page_controller.dart';

class NotiPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotiPageController());
  }
}
