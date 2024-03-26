import 'package:get/get.dart';

import '../controllers/splash1_controller.dart';

class Splash1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Splash1Controller>(
      () => Splash1Controller(),
    );
  }
}
