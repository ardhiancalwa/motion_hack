import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

class AnalisisPageController extends GetxController {
  
  List<Map<String, dynamic>> analisis = [
    {
      'title': Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icons/iconRokok.png',
              scale: 2,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Rokok Yang Harus Dihindari',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
      'body': Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Hari',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '14 Rokok',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Minggu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '98 Rokok',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Bulan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '426 Rokok',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Tahun',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '5112 Rokok',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      'isExpanded': false,
    },
    {
      'title': Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icons/iconDollar.png',
              scale: 2,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Uang Tersimpan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
      'body': Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Hari',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Rp.200',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Minggu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Rp.1.400',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Bulan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Rp.6.086',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Tahun',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Rp.73.033',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      'isExpanded': false,
    },
    {
      'title': Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icons/iconWaktu.png',
              scale: 2,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Waktu Menghindari Rokok',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
      'body': Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Hari',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '1 jam dan 42 menit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Minggu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '9 jam dan 48 menit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Bulan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '1 hari dan 18 jam',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Per Tahun',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '21 hari dan 7 jam',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      'isExpanded': false,
    },
  ];
  void setIsExpanded(int Index) {
    final newAnalisis = {
      'title': analisis[Index]['title'],
      'body': analisis[Index]['body'],
      'isExpanded': !analisis[Index]['isExpanded'],
    };
    analisis[Index] = newAnalisis;
    update();
  }

  var isHariSelected = true.obs;
  var isBulanSelected = false.obs;
  var isTahunSelected = false.obs;

  void selectHari() {
    isHariSelected.value = true;
    isBulanSelected.value = false;
    isTahunSelected.value = false;
    update();
  }

  void selectBulan() {
    isHariSelected.value = false;
    isBulanSelected.value = true;
    isTahunSelected.value = false;
    update();
  }

  void selectTahun() {
    isHariSelected.value = false;
    isBulanSelected.value = false;
    isTahunSelected.value = true;
    update();
  }
}