import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/signup_controller.dart';

class SignupPageView extends GetView<SignupController> {
  const SignupPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('sign up page view'),
    );
  }
}
