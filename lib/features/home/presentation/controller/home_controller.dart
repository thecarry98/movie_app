import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/features/notification/presentation/noti_page_view.dart';
import 'package:movie_app/features/ticket/presentation/ticket_page_view.dart';

import '../../../../const/resource.dart';
import '../../../gen/colors.dart';
import '../../../start/presentation/start_page_view.dart';

class HomeController extends GetxController {
  List<Widget> body = const [
    StartPageView(),
    TicketPageView(),
    NotiPageView(),
    NotiPageView(),
  ];

  List<String> title = [
    'Start Movie',
    'Ticket',
    'Notifiction',
    'User',
  ];

  var index = 0.obs;
  void onTap(int a) {
    index.value = a;
  }

  void onWin() {
    print('g');
  }

  void onInit() {
    super.onInit();
  }
}
