import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/background/frame.png'),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 50,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Profil Saya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  "assets/images/profile/profile.png",
                                  width: 77,
                                  height: 77,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[300],
                                    radius: 16,
                                    child: IconButton(
                                      onPressed: () {
                                        Get.toNamed(Routes.EDIT_PROFILE_PAGE);
                                      },
                                      icon: Image.asset(
                                          "assets/images/icons/edit.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Berhasil Mengurangi Rokok',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                  Text(
                                    'bulan',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                  Text(
                                    'minggu',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                  Text(
                                    'hari',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                  Text(
                                    'jam',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0E54BC),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pengaturan Akun',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.EDIT_PROFILE_PAGE);
                        },
                        icon: const Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ubah Kata Sandi',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.EDIT_PROFILE_PAGE);
                        },
                        icon: const Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Atur Akun',
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
                  const Text(
                    'Lainnya',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tentang Kami',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.EDIT_PROFILE_PAGE);
                        },
                        icon: const Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kebijakan Privasi',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.EDIT_PROFILE_PAGE);
                        },
                        icon: const Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Syarat dan Ketentuan',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.EDIT_PROFILE_PAGE);
                        },
                        icon: const Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Bagikan',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
