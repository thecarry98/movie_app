import 'package:movie_app/core/modules/restful/restful_module.dart';
import 'package:movie_app/features/start/data/models/list_items.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class MovieStartRemoteDataSource {
  Future<ListItems> getComingSoon();
  Future<ListItems> getNowShowing();
}

class MovieStartRemoteDataSourceImpl implements MovieStartRemoteDataSource {
  final http.Client client = http.Client();

  @override
  Future<ListItems> getComingSoon() async {
    RestfulModule restfulModule = Get.find();
    var response = await restfulModule
        .get('https://imdb-api.com/en/API/Top250Movies/k_dbjlvlva');

    return ListItems.fromMap(response.body);
  }

  // _getFromUrl('https://imdb-api.com/en/API/Top250Movies/k_dbjlvlva');

  @override
  Future<ListItems> getNowShowing() async {
    RestfulModule restfulModule = Get.find();
    var response = await restfulModule
        .get('https://imdb-api.com/en/API/MostPopularMovies/k_m8a5jjfl');

    return ListItems.fromMap(response.body);
  }
  // _getFromUrl('https://imdb-api.com/en/API/MostPopularMovies/k_m8a5jjfl');

  Future<ListItems> _getFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return ListItems.fromMap(json.decode(response.body));
    } else {
      throw Exception();
    }
  }
}
