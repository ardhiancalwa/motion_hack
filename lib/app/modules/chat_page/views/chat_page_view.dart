import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

import '../controllers/chat_page_controller.dart';

class ChatPageView extends GetView<ChatPageController> {
  const ChatPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/profile/profileStefanus.png',
                  scale: 1.5,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Stefanus Lee, Sp.P(K)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 15,
                        ),
                        Text(
                          '  online',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/icons/call.png',
                  scale: 1.5,
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Column(
              children: [
                const Text('08.01'),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/profile/profileStefanus.png',
                      scale: 1.5,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text('Halo apakah kamu memiliki keluhan?')
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 55,
                          width: 100,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Hai, dokter',
                              style: TextStyle(
                                color: white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 55,
                          width: 200,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Saya merasa sedikit sesak\n dan batuk',
                              style: TextStyle(
                                color: white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 55,
                          width: 150,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Bagaimana ya dok',
                              style: TextStyle(
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/images/profile/profileChat1.png',
                      scale: 1.5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('08.03'),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/profile/profileStefanus.png',
                          scale: 1.5,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Apakah sudah lama kamu \nmengalami batuk itu?',
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Image.asset(
                              'assets/images/items/audio.png',
                              scale: 2,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text('Gitu ya'),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                                'Setelah ini kamu bisa tebus\nobatnya di apotek yaa'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.black12,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/emoji.png',
                      scale: 2,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/icons/voice.png',
                      scale: 2,
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    const Text(
                      'Tulis pesanmu',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/icons/send.png',
                      scale: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
