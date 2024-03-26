import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';
import 'package:motion_hack/app/shared/widget/card_doctor.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>(); 
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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 50,
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
                  const SizedBox(
                    height: 28,
                  ),
                  Card(
                    color: white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 22,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Waktu Bebas Rokok",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Setiap detik adalah kesempatan baru untuk hidup lebih sehat.",
                            style: TextStyle(
                              fontSize: 14,
                              color: grey,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      backgroundColor: primaryColor,
                                    ),
                                    onPressed: () {
                                      Get.toNamed(
                                          Routes.DETAIL_PROGRESS_TRACKER);
                                    },
                                    child: Text(
                                      "Detail",
                                      style: TextStyle(
                                        color: white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 39,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/icons/up.png",
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "13% dari minggu lalu",
                                        style: TextStyle(
                                          color: grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Image.asset("assets/images/items/progress.png")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/background/smoke.png"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Oops,",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                const Text(
                                  "saya baru saja merokok",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    backgroundColor:
                                        Colors.white.withOpacity(0.4),
                                  ),
                                  child: const Text(
                                    "Ulangi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.2, right: 22),
                            child: Image.asset(
                              "assets/images/items/people.png",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.ANALISIS_PAGE);
                        },
                        child: Card(
                          color: const Color(0xFFC1E5FF),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  "assets/images/items/dollar.png",
                                  color: white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 26,
                                  horizontal: 30,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        text: "Kamu telah\n",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "hemat",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "IDR",
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "36.750",
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "hari ini",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC1E5FF).withOpacity(0.9),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Image.asset(
                                "assets/images/items/panah.png",
                                color: secandaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 26,
                                horizontal: 30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      text: "Kamu ",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              "berhasil\n", // Teks ini akan dibuat tebal
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight
                                                .bold, // Menambahkan tebal di sini
                                          ),
                                        ),
                                        TextSpan(
                                          text: "melewati",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "14",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "hari",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "tantangan",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Konsultasi",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.KONSULTASI);
                        },
                        child: Text(
                          "Lihat semua",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CardDoctor(
                    name: "dr. Stefanus Lee, Sp.P(K)",
                    description:
                        "Spesialis Pulmonologi dan\nKedokteran Respirasi",
                    harga: "30.000",
                    image: "stefanus",
                  ),
                  CardDoctor(
                    name: "dr. Agita Meisha, Sp.P(K)",
                    description:
                        "Spesialis Pulmonologi dan\nKedokteran Respirasi",
                    harga: "45.000",
                    image: "agita",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
