import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/theme/text_style.dart';

import '../../const/resource.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  AppBarCustom({
    Key? key,
    this.showBack = false,
    this.title = '',
    this.centerTitle = false,
    this.isDrawer = false,
    this.color,
    this.actionCount = 1,
    this.notification = false,
    this.isCart = false,
    this.isSearch = false,
    this.middle,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);
  // : super(key: key);
  final Size preferredSize;
  Widget? middle;
  String? title;
  bool centerTitle;
  bool isDrawer;
  bool showBack;
  Color? color;
  int? actionCount;
  bool notification;
  bool isCart;
  bool isSearch;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: color ?? colore5e5e5,
      leading: showBack
          ? GestureDetector(
              onTap: Get.back,
              child: SvgPicture.asset(R.ASSETS_SVG_ARROW_SVG),
            )
          : Container(),
      middle: centerTitle
          ? Text(
              '$title',
              style: typoRegular18.copyWith(
                  fontSize: 18, fontWeight: FontWeight.bold),
            )
          : Container(),
      trailing: isSearch
          ? GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                R.ASSETS_SVG_ZOOM_SVG,
                width: 15,
                height: 15,
              ),
            )
          : Container(),
    );
  }
}
