import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/detail_child_page/detail_child_page_view.dart';

import '../../../theme/text_style.dart';
import '../../gen/colors.dart';
import 'package:get/get.dart';
import 'controller/movie_detail_controller.dart';
import 'pages/review_child_page/review_child_page_view.dart';
import 'pages/showtime_child_page/showtime_child_page_view.dart';
// import 'controller/movie_detail_auth_controller.dart';

class MovieDetailAuthView extends GetView<MovieDetailController> {
  MovieDetailAuthView({Key? key, this.expandedHeight = 200}) : super(key: key);
  double? expandedHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: MediaQuery.of(context).size.height -
            expandedHeight! -
            20 -
            MediaQuery.of(context).padding.top,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 50,
                // margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                  border: Border.all(
                    width: 1,
                    color: color0f1b2b.withOpacity(0.3),
                  ),
                ),
                child: TabBar(
                  padding: const EdgeInsets.all(3),
                  labelColor: colorWhite,
                  unselectedLabelColor: color0f1b2b,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    color: colore51937,
                  ),
                  labelStyle: typoRegular18.copyWith(
                    fontSize: 15,
                  ),
                  unselectedLabelStyle: typoRegular18.copyWith(
                    fontSize: 15,
                  ),
                  controller: controller.tabController,
                  tabs: [
                    Tab(text: '${controller.titleAuth[0]}'),
                    Tab(text: '${controller.titleAuth[1]}'),
                    Tab(text: '${controller.titleAuth[2]}'),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      DetailChildPageView(tag: controller.titleAuth[0]),
                      ReviewChildPageView(tag: controller.titleAuth[1]),
                      ShowtimeChildPageView(tag: controller.titleAuth[2]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
