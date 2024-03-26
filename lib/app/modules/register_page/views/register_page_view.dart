import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';
import 'package:motion_hack/app/modules/register_page/controllers/register_page_controller.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  final authC = Get.find<AuthController>();
  RegisterPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/items/logo.png"),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 88),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yuk, Daftarkan Dirimu!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Masukkan data berikut untuk mendaftarkan akunmu",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: controller.fullnameC,
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
                      hintText: "Masukkan nama",
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 14,
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
                    height: 14,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14,
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
                    height: 14,
                  ),
                  const Text(
                    "Konfirmasi Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: controller.confirmPassC,
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
                      hintText: "Masukkan konfirmasi Password",
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Dengan masuk atau mendaftar, kamu menyetujui ",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: "Ketentuan layanan",
                            style: TextStyle(color: primaryColor)),
                        TextSpan(
                            text: " dan ",
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "Kebijakan  privasi",
                            style: TextStyle(color: primaryColor)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16.5),
                      ),
                      onPressed: () {
                        if (controller.passC.value ==
                            controller.confirmPassC.value) {
                          authC.register(
                            controller.emailC.text,
                            controller.passC.text,
                            controller.fullnameC.text,
                          );
                        }
                        Get.offAllNamed(Routes.NAVIGATION);
                      },
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Sudah punya akun? "),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(Routes.LOGIN_PAGE);
                          },
                          child: Text(
                            "Masuk",
                            style: TextStyle(color: primaryColor),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
