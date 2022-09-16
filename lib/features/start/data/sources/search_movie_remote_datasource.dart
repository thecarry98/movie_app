import '../../../../core/modules/restful/restful_module.dart';
import '../models/search_movie.dart/search_movie.dart';
import 'package:get/get.dart';

abstract class SearchMovieRemoteDataSource {
  Future<SearchMovie> getMovieSearch(String movieName);
}

class SearchMovieRemoteDataSourceImpl implements SearchMovieRemoteDataSource {
  RestfulModule restfulModule = Get.find();
  @override
  Future<SearchMovie> getMovieSearch(String movieName) async {
    var response = await restfulModule
        .get('https://imdb-api.com/en/API/SearchMovie/k_m8a5jjfl/${movieName}');
    return SearchMovie.fromMap(response.body);
  }
  
}
