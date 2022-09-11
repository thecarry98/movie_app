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
import '../../controller/start_page_controller.dart';
import 'controller/now_showing_page_controller.dart';

class NowShowingPageView extends StatelessWidget {
  const NowShowingPageView({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    NowShowingPageController controller = Get.put(
        NowShowingPageController(tag, Get.find<GetNowShowingUsecase>()),
        tag: tag);
    return Obx(
      () => controller.isLoading.isFalse
          ? Container(
              margin: const EdgeInsets.all(8),
              child: AlignedGridView.count(
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
            )
          : const Center(
              child: CircularProgressIndicator(
                color: colore51937,
              ),
            ),
    );
  }
}
