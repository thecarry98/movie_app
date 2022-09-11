import 'package:get/get.dart';
import 'package:movie_app/features/movie_detail/data/repository/auth/movie_detail_auth_repository_impl.dart';
import 'package:movie_app/features/start/data/repository/start_repositories_impl.dart';
import 'package:movie_app/features/start/domain/repository/start_repositores.dart';

import 'features/movie_detail/data/repository/detail/detail_child_repository_impl.dart';
import 'features/movie_detail/data/repository/review/review_child_repository_impl.dart';
import 'features/movie_detail/domain/repository/auth/movie_detail_auth_repository.dart';
import 'features/movie_detail/domain/repository/detail/detail_child_repository.dart';
import 'features/movie_detail/domain/repository/review/review_child_repository.dart';

class RepositoryBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<StartRepositories>(
        () => StartRepositoriesImpl(movieStartRemoteDataSource: Get.find()));
    Get.lazyPut<MovieDetailAuthRepository>(
        () => MovieDetailAuthRepositoryImpl(Get.find()));

    Get.lazyPut<DetailChildRepository>(
        () => DetailChildRepositoryImpl(detailChildDataSource: Get.find()));

    Get.lazyPut<ReviewChildRepository>(
        () => ReviewChildRepositoryImpl(reviewChildDataSource: Get.find()));
  }
}
