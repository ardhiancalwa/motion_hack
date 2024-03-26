import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/routes/app_pages.dart';

import '../theme/color.dart';

class CardDoctor extends StatelessWidget {
  String image;
  String name;
  String description;
  String harga;
  CardDoctor({
    super.key,
    required this.name,
    required this.description,
    required this.harga,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              height: 125,
              width: 91,
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/profile/$image.png",
                  ),
                  fit: BoxFit
                      .cover, // Adjusts the size of the image to cover the entire container
                ),
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            Column(
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
                      ),
                    )
                  ],
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: grey,
                    fontSize: 11,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "IDR",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      harga,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.JADWAL_KONSULTASI);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text(
                        "Konsultasi",
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
