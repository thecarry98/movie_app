import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:movie_app/features/start/domain/usecase/get_now_showing_usecase.dart';
import 'package:movie_app/features/start/presentation/component/movie_card_component.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../routes.dart';
import '../../../domain/usecase/search_movie_usecase.dart';
import '../../controller/start_page_controller.dart';
import 'controller/now_showing_page_controller.dart';

class NowShowingPageView extends StatelessWidget {
  const NowShowingPageView({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    late NowShowingPageController controller;
    if (Get.isRegistered<NowShowingPageController>(tag: tag)) {
      controller = Get.find<NowShowingPageController>(tag: tag);
    } else {
      controller = Get.put(
        NowShowingPageController(
          tag,
          Get.find<GetNowShowingUsecase>(),
          Get.find<SearchMovieUsecase>(),
        ),
        tag: tag,
      );
    }
    return Obx(() {
      print('${controller.isSearching.value}' + 'iiiiiiiiii');
      print('${controller.isLoading}' + 'is loading');
      return Container(
        margin: const EdgeInsets.all(8),
        child: controller.isSearching.isTrue
            ? AlignedGridView.count(
                itemCount: controller.movieSearch.value!.resultEntity!.length,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: MovieCardComponent(
                      movieSearch:
                          controller.movieSearch.value!.resultEntity![index],
                      isSearching: true,
                    ),
                    onTap: () {
                      Get.toNamed(Routes.movie_detail, arguments: {
                        'id':
                            '${controller.movieSearch.value!.resultEntity![index].id}'
                      });
                      // print(controller.listMovie[index].id);
                    },
                  );
                },
              )
            : AlignedGridView.count(
                itemCount: controller.listMovie.length,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child:
                        MovieCardComponent(movie: controller.listMovie[index]),
                    onTap: () {
                      Get.toNamed(Routes.movie_detail, arguments: {
                        'id': '${controller.listMovie[index].id}'
                      });
                      print(controller.listMovie[index].id);
                    },
                  );
                },
              ),
      );
      // : const Center(
      //     child: CircularProgressIndicator(
      //       color: colore51937,
      //     ),
      //   );
    });
  }
}
