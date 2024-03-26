import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/analisis_page_controller.dart';

class AnalisisPageView extends GetView<AnalisisPageController> {
  final authC = Get.find<AuthController>(); 
  final AnalisisPageController analisisPageController =
      Get.put(AnalisisPageController());

  AnalisisPageView({super.key});
  @override
  Widget build(BuildContext context) {
    print(controller.analisis);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background/frame2.png',
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
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
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            color: white.withOpacity(0.9),
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Uang Tersimpan',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF00255B),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Rp36.750,-  ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF00255B),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 150,
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    'assets/images/items/dollar2.png',
                                    scale: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: white.withOpacity(0.9),
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rokok Dihindari',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF00255B),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '7 Rokok       ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF00255B),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 150,
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    'assets/images/items/rokok.png',
                                    scale: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Progres Keseluruhan',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            _showBottomSheetAnalisis(context);
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                      'assets/images/background/blueAnalisis.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Lihat Analisa',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'Jumlah Merokok',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: white,
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 27, right: 16),
                                      child: Image.asset(
                                        'assets/images/background/line.png',
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GetBuilder<AnalisisPageController>(
                          builder: (controller) {
                            return ExpansionPanelList(
                              expandIconColor: primaryColor,
                              expansionCallback: (int index, bool isExpanded) {
                                controller.setIsExpanded(index);
                              },
                              children: controller.analisis.map<ExpansionPanel>(
                                  (Map<String, dynamic> item) {
                                return ExpansionPanel(
                                  headerBuilder:
                                      (BuildContext context, bool isExpanded) {
                                    return item['title'];
                                  },
                                  body: item['body'],
                                  isExpanded: item['isExpanded'],
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _showBottomSheetAnalisis(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return GetBuilder<AnalisisPageController>(
        builder: (controller) {
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
                      const SizedBox(
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
                      const SizedBox(
                        height: 9,
                      ),
                      Image.asset(
                        'assets/images/items/paruAnalisis.png',
                        scale: 2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
