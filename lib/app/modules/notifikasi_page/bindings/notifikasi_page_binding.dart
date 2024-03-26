import 'package:get/get.dart';

import '../controllers/notifikasi_page_controller.dart';

class NotifikasiPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifikasiPageController>(
      () => NotifikasiPageController(),
    );
  }
}
