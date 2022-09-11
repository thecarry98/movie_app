import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'controller/noti_page_controller.dart';
import 'package:get/get.dart';

class NotiPageView extends GetView<NotiPageController> {
  const NotiPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('noti')),
    );
  }
}
