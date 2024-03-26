import 'package:get/get.dart';

import '../controllers/atur_akun_page_controller.dart';

class AturAkunPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AturAkunPageController>(
      () => AturAkunPageController(),
    );
  }
}
