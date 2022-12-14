import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/start/domain/usecase/get_now_showing_usecase.dart';

import '../../../../domain/entities/movie_entity.dart';
import '../../../../domain/entities/search_movie/search_movie_entity.dart';
import '../../../../domain/usecase/search_movie_usecase.dart';

class NowShowingPageController extends GetxController {
  var isLoading = false.obs;
  var isLoading2 = false.obs;
  var isSearching = false.obs;
  final String tag;
  // final TextEditingController textController;

  NowShowingPageController(
      this.tag, this.getNowShowingUsecase, this.getSearchMovie);

  final GetNowShowingUsecase getNowShowingUsecase;
  final SearchMovieUsecase getSearchMovie;
  var listMovie = [].obs;
  Rx<SearchMovieEntity?> movieSearch = Rx<SearchMovieEntity?>(null);
  @override
  void onInit() async {
    super.onInit();
    // isLoading.value = true;
    switch (tag) {
      case 'Now Showing':
        print("Now showing api");

        callMovie();

        /// Gọi dữ liệu của now
        break;
    }
  }

  @override
  void onReady() async {
    super.onReady();
    // searchMovie();
  }

  void searchMovie(String name) async {
    if (name.isEmpty) {
      // isLoading.value = true;
      callMovie();
      isSearching(false);
    } else {
      print(name);
      isLoading(true);
      isSearching.value = true;
      var result = await getSearchMovie(name);
      result.fold(
        (l) => print('Error'),
        (r) => {
          movieSearch.value = r,
          print('done'),
        },
      );
      isLoading(false);
      print(isSearching.value);
      print(movieSearch.value!.resultEntity!.length);
    }
    // var result = await getSearchMovie(name);
    // result.fold(
    //   (l) => print('Error'),
    //   (r) => {movieSearch.value = r, print('done')},
    // );
    // print(name);
    // print('${movieSearch.value!.resultEntity}');
  }

  void callMovie() async {
    isLoading.value = true;
    var result = await getNowShowingUsecase();

    result.fold(
      (l) => print('Error'),
      (r) => {listMovie.assignAll(r.list), print('Success')},
    );

    isLoading.value = false;
  }
}
