import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/start/domain/entities/movie_entity.dart';
import 'package:movie_app/features/start/presentation/page/now_showing/now_showing_page_view.dart';

import '../../domain/usecase/get_now_showing_usecase.dart';
import '../page/coming_soon/coming_soon_page_view.dart';
import '../page/now_showing/controller/now_showing_page_controller.dart';

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
  var activeSearch = false.obs;
  var isLoading = false.obs;
  void callbackTrailing() {
    activeSearch(!activeSearch.value);
    print(activeSearch.value);
  }

  late NowShowingPageController controller1;

  void onChanged(name) {
    // print(name);
    controller1.searchMovie(name);
  }

  var count = 0.obs;
  var listMovie = <MovieEntity>[].obs;
  late TabController tabController;
  @override
  void onInit() async {
    super.onInit();
    // getNowShowingMovie();
    tabController = TabController(vsync: this, length: listTitle.length);
    if (Get.isRegistered<NowShowingPageController>()) {
      controller1 = Get.find<NowShowingPageController>();
    } else {
      controller1 = Get.put(
          NowShowingPageController(listTitle[0], Get.find(), Get.find()));
    }
  }

  // Future<void> getNowShowingMovie() async {
  //   // var result = await getNowShowing();
  //   // listMovie.add(result);
  // }
}
