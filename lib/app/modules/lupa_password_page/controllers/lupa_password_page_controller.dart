import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';

class LupaPasswordPageController extends GetxController {
  final authC = Get.find<AuthController>();
  TextEditingController emailC = TextEditingController();

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailC.text.trim());
      Get.dialog(
        const AlertDialog(
          // ignore: prefer_const_constructors
          content: Text(
            'Password telah dikirim! Silahkan Cek Email anda',
            textAlign: TextAlign.center,
          ),
          contentTextStyle: TextStyle(
            color: Colors.green,
            fontSize: 20,
          ),
          icon: Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 60,
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      Get.dialog(
        AlertDialog(
          content: Text(
            e.message.toString(),
            textAlign: TextAlign.center,
          ),
          contentTextStyle: const TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
          icon: const Icon(
            Icons.dangerous_outlined,
            color: Colors.red,
            size: 60,
          ),
        ),
      );
    }
  }
}
