import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:movie_app/features/start/presentation/page/coming_soon/coming_soon_page_view.dart';
import 'package:movie_app/features/start/presentation/page/now_showing/now_showing_page_view.dart';
import 'package:movie_app/theme/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../const/resource.dart';
import '../../../routes.dart';
import '../../component/appbar_custom.dart';
import '../../component/text_field_custom.dart';
import 'controller/start_page_controller.dart';

class StartPageView extends GetView<StartPageController> {
  const StartPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        isBack: false,
        // title: 'Start Movie',
        // isActiveSearch: controller.activeSearch.value,
        middle: Obx(() => controller.activeSearch.value
            ? TextFieldCustom(
                onChanged: controller.onChanged,
              )
            : Text('Start Movie')),
        // isActiveSearch: controller.activeSearch.value,
        isSearch: false,
        callbackTrailing: () {
          controller.callbackTrailing();
          // print(controller.activeSearch.value);
        },
        trailing: Obx(
          () => controller.activeSearch.isFalse
              ? GestureDetector(
                  onTap: controller.callbackTrailing
                  // print('$isActiveSearch');
                  ,
                  child: SvgPicture.asset(R.ASSETS_SVG_ZOOM_SVG),
                )
              : GestureDetector(
                  onTap: controller.callbackTrailing
                  // print('$isActiveSearch');
                  ,
                  child: SvgPicture.asset(
                    R.ASSETS_SVG_ICONS8_CLOSE_SVG,
                    height: 20,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              border: Border.all(
                width: 1,
                color: color0f1b2b.withOpacity(0.3),
              ),
            ),
            // height: 50,
            child: TabBar(
              padding: const EdgeInsets.all(5),
              labelColor: colorWhite,
              unselectedLabelColor: color0f1b2b,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: colore51937,
              ),
              labelStyle: typoRegular18.copyWith(
                fontSize: 17,
                // color: color0f1b2b,
              ),
              unselectedLabelStyle: typoRegular18.copyWith(
                fontSize: 17,
              ),
              controller: controller.tabController,
              tabs: const [
                Tab(text: 'Now Showing'),
                Tab(text: 'Coming Soon'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                NowShowingPageView(tag: controller.listTitle[0]),
                ComingSoonPageView(tag: controller.listTitle[1]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
