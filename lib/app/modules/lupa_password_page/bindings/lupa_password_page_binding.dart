import 'package:get/get.dart';

import '../controllers/lupa_password_page_controller.dart';

class LupaPasswordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LupaPasswordPageController>(
      () => LupaPasswordPageController(),
    );
  }
}
