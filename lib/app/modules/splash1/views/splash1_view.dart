import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/splash1_controller.dart';

class Splash1View extends GetView<Splash1Controller> {
  const Splash1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.SPLASH2);
    }));
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
          child: Image.asset(
        'assets/images/items/splash2.png',
        scale: 2,
      )),
    );
  }
}
