import 'package:get/get.dart';
import 'package:movie_app/features/ticket/presentation/controller/ticket_page_controller.dart';

class TicketPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketPageController());
  }
}
