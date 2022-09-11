import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/start/domain/entities/movie_entity.dart';
import 'package:movie_app/features/start/presentation/page/now_showing/now_showing_page_view.dart';

import '../../domain/usecase/get_now_showing_usecase.dart';
import '../page/coming_soon/coming_soon_page_view.dart';

class StartPageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // final GetNowShowingUsecase getNowShowing;
  // StartPageController({required this.getNowShowing});
  List<String> listTitle = [
    'Now Showing',
    'Coming Soon',
  ];
  // List<Widget> tab = [
  //    NowShowingPageView(tag: listTitle[0],),
  //   const ComingSoonPageView(),
  // ];

  var isLoading = false.obs;

  var count = 0.obs;
  var listMovie = <MovieEntity>[].obs;
  late TabController tabController;
  void onInit() async {
    super.onInit();
    // getNowShowingMovie();
    tabController = TabController(vsync: this, length: listTitle.length);
  }

  // Future<void> getNowShowingMovie() async {
  //   // var result = await getNowShowing();
  //   // listMovie.add(result);
  // }
}
