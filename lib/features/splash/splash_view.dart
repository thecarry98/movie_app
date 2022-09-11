import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:get/get.dart';
import '../../const/resource.dart';
import 'controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  // const SpashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colore51937,
      body: Center(
        child: SvgPicture.asset(
          R.ASSETS_SVG_FRAME_SVG,
          color: Colors.white,
          height: 185,
          width: 110,
        ),
        // child: Text('hihi'),
      ),
    );
  }
}
