import 'package:get/get.dart';

import '../controllers/analisis_page_controller.dart';

class AnalisisPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnalisisPageController>(
      () => AnalisisPageController(),
    );
  }
}
