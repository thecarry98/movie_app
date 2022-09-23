import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/profile/presentation/page/login_page.dart';

import '../page/user_page.dart';

class ProfileController extends GetxController {
  var check = false.obs;
  late Widget? body;
  late TextEditingController userController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  void checkLogin() {
    if (1 == 1) {
      check.value = false;
      body = LoginPageView();
    } else {
      check.value = true;
      body = UserPageView();
    }
  }
}
