import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/features/gen/colors.dart';

import '../../../const/resource.dart';
import '../../component/appbar_custom.dart';
import 'controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBarCustom(
            color: colorWhite,
            title: controller.title[controller.index.value],
            centerTitle: true,
            isSearch: true,
          ),
          body: controller.body[controller.index.value],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  R.ASSETS_SVG_MOVIE_REEL_SVG,
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  R.ASSETS_SVG_MOVIE_REEL_SVG,
                  color: color47cfff,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  R.ASSETS_SVG_EVENT_TICKET_SVG,
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  R.ASSETS_SVG_EVENT_TICKET_SVG,
                  color: color47cfff,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  R.ASSETS_SVG_ALARM_SVG,
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  R.ASSETS_SVG_ALARM_SVG,
                  color: color47cfff,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  R.ASSETS_SVG_SINGLE_03_SVG,
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  R.ASSETS_SVG_SINGLE_03_SVG,
                  color: color47cfff,
                ),
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
