import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../detail_child_page/component/actor_component.dart';
import '../detail_child_page/component/photo_component.dart';
import 'controller/view_all_controller.dart';

class ViewAllView extends GetView<ViewAllController> {
  const ViewAllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CupertinoNavigationBar(
          leading: GestureDetector(
            onTap: Get.back,
            child: const Icon(
              CupertinoIcons.back,
            ),
          ),
          middle: Text('${controller.viewAllContent.title}'),
        ),
        body: Container(
          height: Get.height,
          margin: EdgeInsets.all(8),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    switch (controller.viewAllContent.title) {
      case 'Actors':
        return Builder(builder: (context) {
          return ListView.builder(
            itemBuilder: (context, int) => ActorComponent(
              radius: 30,
              actor: controller.viewAllContent.listActorListEntity?[int],
            ),
            itemCount: controller.viewAllContent.listActorListEntity?.length,
          );
        });
      case 'Photos':
        return Builder(builder: (context) {
          return ListView.separated(
            itemBuilder: (context, int) => PhotoComponent(
              image:
                  controller.viewAllContent.imageEntity?.itemsImageEntity?[int],
              imageWidth: Get.width,
              imageHeight: 250,
              radius: 20,
            ),
            itemCount: controller
                    .viewAllContent.imageEntity?.itemsImageEntity?.length ??
                0,
            separatorBuilder: (context, index) => const Divider(),
          );
        });
    }
    return Container();
  }
}
