import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/atur_akun_page_controller.dart';

class AturAkunPageView extends GetView<AturAkunPageController> {
  AturAkunPageView({Key? key}) : super(key: key);
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 18,
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'Atur Akun',
            style: TextStyle(
              color: Color(0xFF191D30),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 45),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Keluar',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      authC.logout();
                    },
                    icon: const Icon(Icons.chevron_right_rounded),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hapus Akun',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.ATUR_AKUN_PAGE);
                    },
                    icon: const Icon(Icons.chevron_right_rounded),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
