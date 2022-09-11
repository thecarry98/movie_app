import 'package:movie_app/features/movie_detail/domain/entities/detail/full_movie_detail_entity.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';

import '../../../../domain/usecase/detail/get_full_movie_detail_usecase.dart';

class DetailChildPageController extends GetxController {
  final String tag;
  String id = Get.arguments['id'];
  // String id = 'tt1375666';
  Rx<VideoPlayerController?> videoController = Rx<VideoPlayerController?>(null);
  Rx<FullMovieDetailEntity?> fullMovieDetail = Rx<FullMovieDetailEntity?>(null);

  final GetFullMovieDetailUsecase getFullMovieDetail;

  var isLoading = false.obs;
  DetailChildPageController(this.tag, this.getFullMovieDetail);
  void onInit() {
    print(id + 'Detail child page');
    callAPI();
    super.onInit();
    // delay();
    // getVideo();
  }

  Future<void> getVideo() async {
    videoController.value =
        VideoPlayerController.network('https://www.imdb.com/video/vi2333017881')
          ..initialize().then((_) => videoController.value!.play());
    print('call api video');
  }

  void delay() async {
    isLoading.value = true;
    Future.delayed(
      const Duration(milliseconds: 5000),
      () {
        isLoading.value = false;
        print(id);
      },
    );
  }

  void callAPI() async {
    isLoading.value = true;
    var result = await getFullMovieDetail(id);

    result.fold((l) => {print('error')},
        (r) => {print('Success'), fullMovieDetail.value = r});
    isLoading.value = false;
  }
}
