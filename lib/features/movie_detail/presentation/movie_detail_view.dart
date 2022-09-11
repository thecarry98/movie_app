import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/movie_detail/presentation/movie_detail_auth_view.dart';
import '../../../const/resource.dart';
import '../../../theme/text_style.dart';
import '../../gen/colors.dart';
import 'controller/movie_detail_controller.dart';

class MovieDetailView extends GetView<MovieDetailController> {
  MovieDetailView({Key? key}) : super(key: key);
  late double expandedHeight = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            collapsedHeight: expandedHeight,
            flexibleSpace: Obx(
              () => Image.network(
                '${controller.movieDetailAuth.value?.itemAuthEntity![0].image ?? 'https://deviet.vn/wp-content/uploads/2019/04/vuong-quoc-anh.jpg'}',
                fit: BoxFit.fill,
              ),
            ),
            title: Obx(
              () => Column(
                children: [
                  Text('${controller.movieDetailAuth.value?.fullTitle ?? ''}'),
                  Text('${controller.movieDetailAuth.value?.type ?? ''}'),
                ],
              ),
            ),
            centerTitle: true,
            // floating: true,
            expandedHeight: expandedHeight,
            pinned: true,
            leading: GestureDetector(
              onTap: Get.back,
              child: const Icon(CupertinoIcons.back),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            // color: Colors.red,
            child: MovieDetailAuthView(expandedHeight: expandedHeight),
          ),
        ],
      ),
    );
  }
}
