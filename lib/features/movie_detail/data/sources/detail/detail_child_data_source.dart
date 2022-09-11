import 'dart:convert';
import 'package:get/get.dart';
import 'package:movie_app/core/modules/restful/restful_module.dart';
import 'package:movie_app/features/movie_detail/data/models/detail/full_movie_detail.dart';

abstract class DetailChildDataSource {
  Future<FullMovieDetail> getFullMovieDetail(String id);
}

class DetailChildDataSourceImpl implements DetailChildDataSource {
  RestfulModule restfulModule = Get.find();
  @override
  Future<FullMovieDetail> getFullMovieDetail(String id) async {
    var response = await restfulModule.get(
        'https://imdb-api.com/en/API/Title/k_m8a5jjfl/$id/FullActor,Images,Trailer,');

    return FullMovieDetail.fromMap(response.body);
  }
}
