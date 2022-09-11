import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/ticket/presentation/controller/ticket_page_controller.dart';

class TicketPageView extends GetView<TicketPageController> {
  const TicketPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('ticket'));
  }
}
