import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/movie_detail/domain/entities/auth/movie_detail_auth_entity.dart';
import '../../domain/usecase/auth/get_movie_detail_auth_usecase.dart';

class MovieDetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isLoading = false.obs;
  final GetMovieDetailAuthUsecase getMovieDetailAuthUsecase;
  String id = Get.arguments['id'];
  // late String id = 'tt1375666';
  MovieDetailController(this.getMovieDetailAuthUsecase);
  List<String> titleAuth = [
    'Detail',
    'Review',
    'Showtime',
  ];

  late TabController tabController;
  // var fullCast = FullCastEntity().obs;
  Rx<MovieDetailAuthEntity?> movieDetailAuth = Rx<MovieDetailAuthEntity?>(null);
  // var fullCastEntity = ''.obs;
  var title = ''.obs;

  void onInit() async {
    // id = Get.arguments['id'];
    // print(id);
    callMovieAuth();
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
  }

  void callMovieAuth() async {
    isLoading.value = true;

    var result = await getMovieDetailAuthUsecase(id);

    result.fold(
      (l) => print('Error'),
      (r) => {movieDetailAuth.value = r, print(r.fullTitle)},
    );
    isLoading.value = false;
  }
}
