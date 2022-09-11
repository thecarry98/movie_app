import 'dart:convert';
import 'package:movie_app/core/failures/datasource/datasource.dart';
import 'package:movie_app/core/modules/restful/restful_module.dart';
import 'package:movie_app/features/movie_detail/data/models/auth/movie_auth.dart';
import 'package:movie_app/features/movie_detail/domain/entities/auth/movie_detail_auth_entity.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../../core/failures/datasource/datasource.dart';

abstract class MovieDetailDataSource {
  Future<MovieAuth> getMovieDetailAuth(String id);
}

class MovieDetailDataSourceImpl implements MovieDetailDataSource {
  RestfulModule restfulModule = Get.find();

  @override
  Future<MovieAuth> getMovieDetailAuth(String id) async {
    // _getAPI('https://imdb-api.com/en/API/Images/k_m8a5jjfl/${id}', id);
    var response = await restfulModule
        .get('https://imdb-api.com/en/API/Images/k_m8a5jjfl/${id}');

    var result = response.body;
    return MovieAuth.fromMap(result);
  }
}
