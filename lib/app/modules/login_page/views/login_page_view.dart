import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  final authC = Get.find<AuthController>();
  LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 64,
              ),
              Image.asset("assets/images/items/logo.png"),
              const SizedBox(
                height: 42,
              ),
              const Text(
                'Halo, Selamat Datang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Masukan email dan password',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const Text(
                'untuk masuk kembali ke akunmu',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.emailC,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Masukkan email",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.passC,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Masukkan password",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        SingleChildScrollView(
                          child: Container(
                            height: 365,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Lupa Password?",
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Jangan khawatir! Hal ini akan terjadi, silahkan masukan email anda.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    TextField(
                                      controller: controller.emailC,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        hintText: "Masukkan email",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 26,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16.5),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Kirim",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Lupa Password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16)),
                  onPressed: () {
                    authC
                        .login(controller.emailC.text, controller.passC.text)
                        .then((signInSuccessful) {
                      if (signInSuccessful) {
                        Get.snackbar(
                          'Selamat',
                          'Login Berhasil',
                          backgroundColor: Colors.green.withOpacity(0.8),
                          colorText: white,
                          duration: const Duration(seconds: 3),
                          animationDuration: const Duration(seconds: 1),
                        );
                      } else {
                        Get.snackbar(
                          'Gagal Login',
                          'Coba periksa email dan password anda',
                          backgroundColor: Colors.red.withOpacity(0.8),
                          colorText: white,
                          duration: const Duration(seconds: 4),
                          animationDuration: const Duration(seconds: 1),
                        );
                      }
                    }).catchError((error) {
                      print('Error during sign in: $error');
                    });
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Belum punya akun? ',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.REGISTER_PAGE);
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
