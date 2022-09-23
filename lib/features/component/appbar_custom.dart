import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/theme/text_style.dart';

import '../../gen/assets.gen.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  AppBarCustom({
    Key? key,
    this.isBack = false,
    this.title,
    this.middle,
    this.trailing,
    this.isNoti = false,
    this.isSearch = false,
    // this.isActiveSearch = false,
    this.color,
    this.leading,
    this.callbackTrailing,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);
  final Size preferredSize;
  bool isBack;
  String? title;
  Widget? middle;
  Widget? trailing;
  Widget? leading;
  bool isNoti;
  bool isSearch;
  // bool isActiveSearch;
  Color? color;
  Function()? callbackTrailing;
  // Function(String) onSearchChanged;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      leading: isBack
          ? GestureDetector(
              onTap: Get.back,
              child: Icon(CupertinoIcons.back),
            )
          : leading,
      middle: middle,
      trailing: isSearch
          ? GestureDetector(
              onTap: callbackTrailing
              // print('$isActiveSearch');
              ,
              child: Assets.svg.zoom.svg(),
            )
          : trailing,
      // trailing: trailing
    );
  }
}
