import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../../../routes/app_pages.dart';
import '../controllers/pengalaman_rokok_controller.dart';

class PengalamanRokokView extends GetView<PengalamanRokokController> {
  const PengalamanRokokView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 73,
                ),
                Text(
                  "Pengalaman Merokok",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF39434F),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Dengan ini, kami dapat merekomendasikan preferensimu yang sesuai denganmu.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF808B9A),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      right: 24,
                      top: 24,
                      bottom: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Berapa batang rokok yang kamu isap per hari?',
                          style: TextStyle(
                            color: Color(0xFF191D30),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                controller.decrement();
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors
                                    .white, // Assuming 'white' is defined somewhere
                                size: 24,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(10),
                                backgroundColor:
                                    primaryColor, // Change to your primary color
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Obx(
                              () => Text(
                                "${controller.count}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors
                                    .white, // Assuming 'white' is defined somewhere
                                size: 24,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(10),
                                backgroundColor:
                                    primaryColor, // Change to your primary color
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Text(
                          'Berapa banyak batang rokok dalam satu bungkus?',
                          style: TextStyle(
                            color: Color(0xFF191D30),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                controller.decrement2();
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors
                                    .white, // Assuming 'white' is defined somewhere
                                size: 24,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(10),
                                backgroundColor:
                                    primaryColor, // Change to your primary color
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Obx(
                              () => Text(
                                "${controller.count2}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            IconButton(
                              onPressed: () {
                                controller.increment2();
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors
                                    .white, // Assuming 'white' is defined somewhere
                                size: 24,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(10),
                                backgroundColor:
                                    primaryColor, // Change to your primary color
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Text(
                          'Berapa harga satu bungkus rokok?',
                          style: TextStyle(
                            color: Color(0xFF191D30),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: grey),
                            ),
                            hintText: "Masukkan harga",
                            hintStyle: TextStyle(
                              color: grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 122,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
