import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';

import '../controllers/lupa_password_page_controller.dart';

class LupaPasswordPageView extends GetView<LupaPasswordPageController> {
  const LupaPasswordPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Row(
              children: [
                Text(
                  'Logo',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            Text(
              'Lupa Password?',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              'Jangan khawatir! Hal ini akan terjadi,',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
              'Silahkan masukan email anda.',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(
              height: 32,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukan Email',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.black12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16)),
                onPressed: () {
                  controller.resetPassword();
                },
                child: Text(
                  'Kirim',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
