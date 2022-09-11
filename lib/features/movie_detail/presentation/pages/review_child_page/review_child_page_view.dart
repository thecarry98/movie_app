import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/detail_child_page/component/comment_component.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/review_child_page/controller/review_child_page_controller.dart';
import 'package:get/get.dart';

class ReviewChildPageView extends StatelessWidget {
  const ReviewChildPageView({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    ReviewChildPageController controller =
        Get.put(ReviewChildPageController(tag, Get.find()), tag: tag);
    return Obx(
      () => controller.isLoading.isFalse
          ? ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, int) => CommentComponent(
                  controller.fullReview.value!.itemReviewEntity![int]),
              separatorBuilder: (context, int) => const SizedBox(height: 15),
              itemCount: controller.fullReview.value!.itemReviewEntity!.length,
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
