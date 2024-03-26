import 'package:get/get.dart';

import '../controllers/set_tanggal_controller.dart';

class SetTanggalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetTanggalController>(
      () => SetTanggalController(),
    );
  }
}
