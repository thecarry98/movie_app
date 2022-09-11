import 'package:get/get.dart';
import 'package:movie_app/features/movie_detail/domain/usecase/auth/get_movie_detail_auth_usecase.dart';
import 'package:movie_app/features/movie_detail/domain/usecase/detail/get_full_movie_detail_usecase.dart';
import 'package:movie_app/features/start/domain/usecase/get_coming_soon_usecase.dart';

import 'features/movie_detail/domain/usecase/review/get_full_review_usecase.dart';
import 'features/start/domain/usecase/get_now_showing_usecase.dart';

class UseCaseBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GetNowShowingUsecase(Get.find()));
    Get.lazyPut(() => GetComingSoonUsecase(Get.find()));
    Get.lazyPut(() => GetMovieDetailAuthUsecase(Get.find()));
    Get.lazyPut(() => GetFullMovieDetailUsecase(Get.find()));
    Get.lazyPut(() => GetFullReviewUsecase(Get.find()));
  }
}
