import 'package:get/get.dart';

class PengalamanRokokController extends GetxController {
  //TODO: Implement PengalamanRokokController

  RxInt count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    if (count.value > 0) {
      count.value--;
    }
  }
  RxInt count2 = 0.obs;

  void increment2() {
    count2.value++;
  }

  void decrement2() {
    if (count2.value > 0) {
      count2.value--;
    }
  }
}
