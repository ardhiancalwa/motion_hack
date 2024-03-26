import 'package:get/get.dart';

import '../controllers/edit_profile_page_controller.dart';

class EditProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfilePageController>(
      () => EditProfilePageController(),
    );
  }
}
