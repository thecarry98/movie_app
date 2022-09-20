import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/commons/network/text_field/common_textfield.dart';
import 'package:movie_app/features/component/appbar_custom.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:movie_app/theme/text_style.dart';
import '../../../../core/commons/presentations/button/common_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../routes.dart';
import '../controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageView extends GetView<ProfileController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Profile',
            style: typoRegular18.copyWith(
              fontSize: 24,
              color: color0f1b2b,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.sign_up);
          },
          child: Text('Sign Up'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height / 4),
              Text(
                'USER NAME',
                style: typoRegular18.copyWith(
                  fontSize: 12,
                  color: color0f1b2b.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 8),
              CommonTextFormField(
                prefixLeading: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Assets.svg.single04.svg(
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'PASSWORD',
                style: typoRegular18.copyWith(
                  fontSize: 12,
                  color: color0f1b2b.withOpacity(0.5),
                ),
              ),
              CommonTextFormField(
                prefixLeading: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Assets.svg.lock.svg(
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
              SizedBox(height: Get.height / 10),
              CommonButton(
                child: Text(
                  'Login',
                  style: typoRegular18.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
