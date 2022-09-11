import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/view_all/entity/view_all_content.dart';
import 'package:video_player/video_player.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/detail_child_page/component/actor_component.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/detail_child_page/component/photo_component.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/detail_child_page/component/title_detail_child_page_component.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/detail_child_page/controller/detail_child_page_controller.dart';
import 'package:get/get.dart';
import '../../../../../routes.dart';

class DetailChildPageView extends StatelessWidget {
  DetailChildPageView({Key? key, required this.tag}) : super(key: key);
  final String tag;
  late double imageHeight = 80;
  late double imageWidth = 120;

  @override
  Widget build(BuildContext context) {
    DetailChildPageController controller =
        Get.put(DetailChildPageController(tag, Get.find()), tag: tag);
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleDetailChildPageComponent(
            title: 'Plot',
          ),
          Obx(
            () => controller.isLoading.isFalse
                ? RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: '${controller.fullMovieDetail.value?.plot}',
                        ),
                      ],
                    ),
                  )
                : const CircularProgressIndicator(),
          ),
          TitleDetailChildPageComponent(
              title: 'Actors',
              isViewAll: true,
              fn: () {
                Get.toNamed(
                  Routes.view_all,
                  arguments: ViewAllContent(
                    title: 'Actors',
                    listActorListEntity:
                        controller.fullMovieDetail.value?.listActorListEntity,
                  ),
                );
              }),
          ...[1, 2, 3, 4, 5]
              .map(
                (e) => Obx(
                  () => controller.isLoading.isFalse
                      ? ActorComponent(
                          actor: controller
                              .fullMovieDetail.value?.listActorListEntity![e])
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              )
              .toList(),
          TitleDetailChildPageComponent(
            title: 'Photos',
            isViewAll: true,
            fn: () {
              Get.toNamed(
                Routes.view_all,
                arguments: ViewAllContent(
                  title: 'Photos',
                  imageEntity: controller.fullMovieDetail.value?.imageEntity,
                ),
              );
            },
          ),
          SizedBox(
            height: imageHeight,
            child: Obx(
              () => controller.isLoading.isFalse
                  ? ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, int) =>
                          const SizedBox(width: 10),
                      itemBuilder: (context, int) => PhotoComponent(
                        image: controller.fullMovieDetail.value?.imageEntity
                            ?.itemsImageEntity?[int + 1],
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ),
          TitleDetailChildPageComponent(
            title: 'Videos',
          ),
          // Container(
          //   height: 200,
          //   width: 400,
          //   // color: Colors.red,
          //   child: controller.videoController.value!.value.isInitialized &&
          //           controller.videoController.value != null
          //       ? AspectRatio(
          //           aspectRatio:
          //               controller.videoController.value!.value.aspectRatio,
          //           child: VideoPlayer(controller.videoController.value!),
          //         )
          //       : Container(),
          // ),
        ],
      ),
    );
  }
}
