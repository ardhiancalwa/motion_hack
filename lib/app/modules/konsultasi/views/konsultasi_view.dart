import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../../../shared/widget/card_doctor.dart';
import '../controllers/konsultasi_controller.dart';

class KonsultasiView extends GetView<KonsultasiController> {
  const KonsultasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Konsultasi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: SizedBox(
              height: 42,
              width: 42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: Image.asset(
                  "assets/images/icons/chat.png",
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    height: 42,
                    width: 294,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 3,
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFF8B849B),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.20,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                          ),
                          child: Image.asset("assets/images/icons/search.png"),
                        ),
                        hintText: "Cari dokter",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    height: 42,
                    width: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        "assets/images/icons/adjustmen.png",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              Text(
                'Konsultasi online dengan dokter terbaik!',
                style: TextStyle(
                  color: Color(0xFF00060F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Temukan dan konsultasikan dengan dokter pilihanmu',
                style: TextStyle(
                  color: Color(0xFF808B9A),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              CardDoctor(
                name: "dr. Stefanus Lee, Sp.P(K)",
                description: "Spesialis Pulmonologi dan\nKedokteran Respirasi",
                harga: "30.000",
                image: "stefanus",
              ),
              SizedBox(
                height: 17,
              ),
              CardDoctor(
                name: "dr. Agita Meisha, Sp.P(K)",
                description: "Spesialis Pulmonologi dan\nKedokteran Respirasi",
                harga: "45.000",
                image: "agita",
              ),
              SizedBox(
                height: 17,
              ),
              CardDoctor(
                name: "dr. Agita Meisha, Sp.P(K)",
                description: "Spesialis Pulmonologi dan\nKedokteran Respirasi",
                harga: "45.000",
                image: "agita",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
