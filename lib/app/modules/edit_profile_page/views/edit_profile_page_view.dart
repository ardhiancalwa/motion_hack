import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/edit_profile_page_controller.dart';

class EditProfilePageView extends GetView<EditProfilePageController> {
  const EditProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          'Edit profil',
          style: TextStyle(
            color: Color(0xFF191D30),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/profile/profile.png",
                    width: 100,
                    height: 100,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor:
                          Colors.grey[300], // Warna latar belakang lingkaran
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/icons/sampah.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 10,
                bottom: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(
                      color: Color(0xFF1D1D1D),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.40,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: controller.namaC,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      hintText: "Jason Darulo",
                      hintStyle: TextStyle(color: grey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      color: Color(0xFF1D1D1D),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.40,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: controller.namaC,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      hintText: "jasondarulo@gmail.com",
                      hintStyle: TextStyle(color: grey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lokasi',
                    style: TextStyle(
                      color: Color(0xFF1D1D1D),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.40,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: controller.namaC,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      hintText: "Kabupaten Malang",
                      hintStyle: TextStyle(color: grey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang saya',
                    style: TextStyle(
                      color: Color(0xFF1D1D1D),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.40,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    maxLines: 3,
                    controller: controller.namaC,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      hintText:
                          "Seorang perokok aktif selama 3 tahun yang ingin merubah pola hidupnya.",
                      hintStyle: TextStyle(color: grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Simpan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
