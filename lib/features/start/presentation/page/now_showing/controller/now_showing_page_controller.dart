import 'package:get/get.dart';
import 'package:movie_app/features/start/domain/usecase/get_now_showing_usecase.dart';

import '../../../../domain/entities/movie_entity.dart';

class NowShowingPageController extends GetxController {
  var isLoading = false.obs;
  final String tag;

  NowShowingPageController(this.tag, this.getNowShowingUsecase);

  final GetNowShowingUsecase getNowShowingUsecase;
  var listMovie = [].obs;
  void onInit() async {
    super.onInit();
    // isLoading.value = true;
    switch (tag) {
      case 'Now Showing':
        print("Now showing api");

        callMovie();

        /// Gọi dữ liệu của now
        break;
    }
  }

  void callMovie() async {
    isLoading.value = true;
    var result = await getNowShowingUsecase();

    result.fold(
      (l) => print('Error'),
      (r) => {listMovie.assignAll(r.list), print('Success')},
    );

    isLoading.value = false;
  }
}
