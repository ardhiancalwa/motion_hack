import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/set_tanggal_controller.dart';

class SetTanggalView extends GetView<SetTanggalController> {
  SetTanggalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 132,
          ),
          Text(
            'Kapan kamu\nberhenti merokok?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF39434F),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Semua demi kesehatan anda, mulai \nberhenti merokok sekarang.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF808B9A),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "24 Agustus 2024",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                )),
            onPressed: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2010, 10, 16),
                lastDate: DateTime(2030, 3, 14),
                confirmText: "Set Date",
                // Define a theme for the date picker
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      primaryColor:
                          primaryColor, // Change the color of the calendar
                      colorScheme: ColorScheme.light(
                        primary: primaryColor, // Change the color of buttons
                      ),
                    ),
                    child: child!,
                  );
                },
              );

              if (selectedDate != null) {
                // Handle the selected date here
                print('Selected date: $selectedDate');
              }
            },
            child: Text(
              "Pilih tanggal",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 35,
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
                  ),
                ),
                onPressed: () {
                  Get.offAllNamed(Routes.PENGALAMAN_ROKOK);
                },
                child: Text(
                  "Selanjutnya",
                  style: TextStyle(
                    color: white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
