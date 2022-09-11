import 'dart:convert';
import 'package:get/get.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/view_all/entity/view_all_content.dart';
import '../../../../data/models/detail/full_movie_detail.dart';
import '../../../../domain/entities/detail/full_movie_detail_entity.dart';

class ViewAllController extends GetxController {
  // var index = Get.arguments['index'];
  // var list = Get.arguments['list'];
  // var imageEntity = ImagesEntity();
  // var listActor = <ActorListEntity?>[];

  ViewAllContent viewAllContent = Get.arguments;

  void check() {
    switch (viewAllContent.title) {
      case 'Actors':
        //TODO:
        break;
      case 'Photos':
        //TODO:
        break;
    }
  }

  void onInit() {
    // check();
    super.onInit();
  }
}
