import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../shared/theme/color.dart';
import '../controllers/jadwal_konsultasi_controller.dart';

class JadwalKonsultasiView extends GetView<JadwalKonsultasiController> {
  const JadwalKonsultasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 37),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/background/stefanus.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 57,
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 537,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 39,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/icons/check.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Profesional Doctor",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'dr. Stefanus Lee, Sp.P(K)',
                        style: TextStyle(
                          color: Color(0xFF00060F),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.35,
                        ),
                      ),
                      Text(
                        "Spesialis Pulmonologi dan Kedokteran Respirasi",
                        style: TextStyle(
                          color: Color(0xFF808B9A),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Tentang',
                        style: TextStyle(
                          color: Color(0xFF00060F),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'dr. Stefanus Lee, Sp.P(K) merupakan seorang dokter spesialis paru yang praktik di Bandung. Dengan keahlian yang mendalam dan pengalaman yang luas, dr. Stefanus Lee menempatkan pelayanan dan perhatian kepada pasien di garis depan praktiknya.',
                        style: TextStyle(
                          color: Color(0xFF808B9A),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pilih tanggal',
                            style: TextStyle(
                              color: Color(0xFF120A0A),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'September 2023',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.navigate_next_rounded,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SelectKam(controller: controller),
                            SelectJum(controller: controller),
                            SelectSab(controller: controller),
                            SelectMin(controller: controller),
                            SelectSen(controller: controller),
                            SelectSel(controller: controller),
                            SelectRab(controller: controller),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Pilih Jam",
                        style: TextStyle(
                          color: Color(0xFF120A0A),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SelectJam(),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "IDR",
                                style: TextStyle(
                                  color: Color(0xFF1370FB),
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.35,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "30.000",
                                style: TextStyle(
                                  color: Color(0xFF1370FB),
                                  fontSize: 30,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.35,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                Get.dialog(
                                  Center(
                                    child: Container(
                                      height: 373,
                                      width: 295,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          12,
                                        ),
                                        color: white,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/items/done.png",
                                          ),
                                          SizedBox(
                                            height: 39,
                                          ),
                                          Text(
                                            'Pembayaran Berhasil',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF191D30),
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.35,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Kamu bisa langsung melakukan konsultasi dengan dokter pilihanmu.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF808B9A),
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 31,
                                          ),
                                          SizedBox(
                                            width: 150,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: primaryColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text(
                                                "Lanjutkan",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "Bayar",
                                style: TextStyle(
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SelectJam extends StatelessWidget {
  const SelectJam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.selectEight();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: controller.isEightSelected.value
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
                    '08.00',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: controller.isEightSelected.value
                          ? white
                          : primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            GestureDetector(
              onTap: () {
                controller.selectNine();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: controller.isNineSelected.value
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
                    '09.00',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: controller.isNineSelected.value
                          ? white
                          : primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            GestureDetector(
              onTap: () {
                controller.selectTen();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: controller.isTenSelected.value
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
                    '10.00',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color:
                          controller.isTenSelected.value ? white : primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class SelectKam extends StatelessWidget {
  const SelectKam({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectKamis();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedKamis.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Kam",
                      style: TextStyle(
                        color: controller.isSelectedKamis.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "7",
                      style: TextStyle(
                        color: controller.isSelectedKamis.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}

class SelectJum extends StatelessWidget {
  const SelectJum({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectJumat();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedJumat.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Jum",
                      style: TextStyle(
                        color: controller.isSelectedJumat.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "8",
                      style: TextStyle(
                        color: controller.isSelectedJumat.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}

class SelectSab extends StatelessWidget {
  const SelectSab({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectSabtu();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedSabtu.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Sab",
                      style: TextStyle(
                        color: controller.isSelectedSabtu.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "9",
                      style: TextStyle(
                        color: controller.isSelectedRabu.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}

class SelectMin extends StatelessWidget {
  const SelectMin({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectMinggu();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedMinggu.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Min",
                      style: TextStyle(
                        color: controller.isSelectedMinggu.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                        color: controller.isSelectedMinggu.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}

class SelectSen extends StatelessWidget {
  const SelectSen({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectSenin();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedSenin.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Sen",
                      style: TextStyle(
                        color: controller.isSelectedSenin.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "11",
                      style: TextStyle(
                        color: controller.isSelectedSenin.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}

class SelectSel extends StatelessWidget {
  const SelectSel({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectSelasa();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedSelasa.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Sel",
                      style: TextStyle(
                        color: controller.isSelectedSelasa.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                        color: controller.isSelectedSelasa.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}

class SelectRab extends StatelessWidget {
  const SelectRab({
    super.key,
    required this.controller,
  });

  final JadwalKonsultasiController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JadwalKonsultasiController>(builder: (controller) {
      return Container(
          child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectRabu();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: controller.isSelectedRabu.value
                    ? Border.all(color: primaryColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 19,
                ),
                child: Column(
                  children: [
                    Text(
                      "Rab",
                      style: TextStyle(
                        color: controller.isSelectedRabu.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "13",
                      style: TextStyle(
                        color: controller.isSelectedRabu.value
                            ? primaryColor
                            : grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ));
    });
  }
}
