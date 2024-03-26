import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/detail_progress_tracker_controller.dart';

class DetailProgressTrackerView
    extends GetView<DetailProgressTrackerController> {
  final authC = Get.find<AuthController>();
  DetailProgressTrackerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 315,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/blue.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FutureBuilder(
                      future: authC.getData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        } else if (snapshot.hasData) {
                          Map<String, dynamic>? user = snapshot.data!.data();
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Selamat Pagi,",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                ),
                              ),
                              Text(
                                user!['fullname'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: white,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Text('No Data');
                        }
                      },
                    ),
                    Image.asset(
                      "assets/images/profile/test_profile.png",
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 683,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Waktu Bebas Rokok',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF191D30),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.35,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Image.asset(
                      "assets/images/items/progress2.png",
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 51),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 53,
                            height: 68,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1370FB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  "bulan",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 53,
                            height: 68,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1370FB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "10",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  "minggu",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 53,
                            height: 68,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1370FB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  "hari",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 53,
                            height: 68,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1370FB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "3",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  "jam",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    _showAnalisyst(controller: controller)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _showAnalisyst extends StatelessWidget {
  const _showAnalisyst({
    super.key,
    required this.controller,
  });

  final DetailProgressTrackerController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailProgressTrackerController>(builder: (controller) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Analisis Jumlah Rokok',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectHari();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: controller.isHariSelected.value
                            ? primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        child: Text(
                          'Hari',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: controller.isHariSelected.value
                                ? white
                                : primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectBulan();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: controller.isBulanSelected.value
                            ? primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        child: Text(
                          'Bulan',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: controller.isBulanSelected.value
                                ? white
                                : primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectTahun();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: controller.isTahunSelected.value
                            ? primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        child: Text(
                          'Tahun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: controller.isTahunSelected.value
                                ? white
                                : primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (controller.isHariSelected.value)
                    Image.asset('assets/images/items/statisticHari.png'),
                  if (controller.isBulanSelected.value)
                    Image.asset('assets/images/items/statisticBulan.png'),
                  if (controller.isTahunSelected.value)
                    Image.asset('assets/images/items/statisticTahun.png'),
                  Image.asset('assets/images/items/indicator.png'),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
