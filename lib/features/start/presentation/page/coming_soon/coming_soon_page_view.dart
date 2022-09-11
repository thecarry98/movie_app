import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/start/domain/usecase/get_coming_soon_usecase.dart';
import 'package:movie_app/features/start/presentation/controller/start_page_controller.dart';
import 'package:movie_app/features/start/presentation/page/coming_soon/controller/coming_soon_page_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../routes.dart';
import '../../../../gen/colors.dart';
import '../../component/movie_card_component.dart';

class ComingSoonPageView extends StatelessWidget {
  const ComingSoonPageView({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    ComingSoonPageController controller = Get.put(
      ComingSoonPageController(tag, Get.find<GetComingSoonUsecase>()),
      tag: tag,
    );
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
