import 'package:get/get.dart';

import '../controllers/splash2_controller.dart';

class Splash2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Splash2Controller>(
      () => Splash2Controller(),
    );
  }
}
