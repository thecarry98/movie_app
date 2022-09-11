import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/showtime_child_page/controller/showtime_child_page_controller.dart';
import 'package:get/get.dart';

class ShowtimeChildPageView extends StatelessWidget {
  const ShowtimeChildPageView({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    ShowtimeChildPageController controller = Get.put(
      ShowtimeChildPageController(tag),
      tag: tag,
    );
    return Center(
      child: Text('show time child page'),
    );
  }
}
