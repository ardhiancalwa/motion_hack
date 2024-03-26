import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/routes/app_pages.dart';

import '../controllers/splash2_controller.dart';

class Splash2View extends GetView<Splash2Controller> {
  const Splash2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), (() {
      Get.offAllNamed(Routes.ONBOARDING_PAGE);
    }));
    return Scaffold(
      body: Center(
          child: Image.asset(
        'assets/images/items/splash.png',
        scale: 2,
      )),
    );
  }
}
