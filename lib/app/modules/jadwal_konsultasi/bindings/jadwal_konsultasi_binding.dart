import 'package:get/get.dart';

import '../controllers/jadwal_konsultasi_controller.dart';

class JadwalKonsultasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JadwalKonsultasiController>(
      () => JadwalKonsultasiController(),
    );
  }
}
