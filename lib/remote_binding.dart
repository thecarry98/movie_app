import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/core/modules/restful/restful_module_impl.dart';
import 'package:movie_app/features/movie_detail/data/sources/auth/movie_detail_data_source.dart';
import 'package:movie_app/features/movie_detail/data/sources/detail/detail_child_data_source.dart';
import 'package:movie_app/features/start/data/sources/movie_start_remote_datasource.dart';

import 'core/modules/restful/restful_module.dart';
import 'features/movie_detail/data/sources/review/review_child_datasource.dart';

class RemoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieStartRemoteDataSource>(
        () => MovieStartRemoteDataSourceImpl(),
        fenix: true);
    Get.lazyPut<MovieDetailDataSource>(() => MovieDetailDataSourceImpl(),
        fenix: true);
    Get.lazyPut<DetailChildDataSource>(() => DetailChildDataSourceImpl(),
        fenix: true);
    Get.lazyPut<ReviewChildDataSource>(() => ReviewChildDataSourceImpl(),
        fenix: true);
    Get.lazyPut<RestfulModule>(() => ResfulModuleImpl(), fenix: true);
  }
}
