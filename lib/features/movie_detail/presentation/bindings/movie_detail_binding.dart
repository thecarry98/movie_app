import 'package:get/get.dart';
import 'package:movie_app/features/movie_detail/presentation/controller/movie_detail_controller.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/view_all/controller/view_all_controller.dart';

class MovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailController(Get.find()));
    Get.lazyPut(() => ViewAllController());
    // Get.lazyPut(() => MovieDetailAuthController());
  }
}
