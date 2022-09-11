import 'package:movie_app/core/modules/restful/restful_module.dart';
import 'package:get/get.dart';
import '../../models/review/review.dart';

abstract class ReviewChildDataSource {
  Future<FullReview> getFullReview(String id);
}

class ReviewChildDataSourceImpl implements ReviewChildDataSource {
  RestfulModule restfulModule = Get.find();
  @override
  Future<FullReview> getFullReview(String id) async {
    var response = await restfulModule
        .get('https://imdb-api.com/en/API/Reviews/k_m8a5jjfl/${id}');
    return FullReview.fromMap(response.body);
  }
}
