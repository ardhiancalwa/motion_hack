import 'package:get/get.dart';

import '../controllers/pengalaman_rokok_controller.dart';

class PengalamanRokokBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengalamanRokokController>(
      () => PengalamanRokokController(),
    );
  }
}
