import 'package:get/get.dart';

import '../controllers/detail_progress_tracker_controller.dart';

class DetailProgressTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProgressTrackerController>(
      () => DetailProgressTrackerController(),
    );
  }
}
