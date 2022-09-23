import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/features/gen/colors.dart';
import '../../../gen/assets.gen.dart';
import '../../component/appbar_custom.dart';
import 'controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: controller.body[controller.index.value],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Assets.svg.movieReel.svg(),
                label: '',
                activeIcon: Assets.svg.movieReel.svg(color: color47cfff),
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.eventTicket.svg(),
                label: '',
                activeIcon: Assets.svg.eventTicket.svg(color: color47cfff),
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.alarm.svg(),
                label: '',
                activeIcon: Assets.svg.alarm.svg(color: color47cfff),
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.single03.svg(),
                label: '',
                activeIcon: Assets.svg.single03.svg(color: color47cfff),
              ),
            ],
            currentIndex: controller.index.value,
            selectedItemColor: Colors.amber[800],
            onTap: controller.onTap,
          ),
        ),
      ),
    );
  }
}
