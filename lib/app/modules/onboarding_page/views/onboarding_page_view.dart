import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motion_hack/app/routes/app_pages.dart';

import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends GetView<OnboardingPageController> {
  const OnboardingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroductionPage(),
    );
  }
}

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Pesan makan & belanja",
          body: "Pesan makanan kesukaanmu diantar segera",
          decoration: const PageDecoration(
            fullScreen: false,
            contentMargin: EdgeInsets.only(
              top: 180,
            ),
            bodyFlex: 2,
            bodyAlignment: Alignment.center,
            bodyTextStyle: TextStyle(fontSize: 14),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        PageViewModel(
          title: "Pesan makan & belanja",
          body: "Pesan makanan kesukaanmu diantar segera",
          decoration: const PageDecoration(
            fullScreen: false,
            contentMargin: EdgeInsets.only(
              top: 180,
            ),
            bodyFlex: 2,
            bodyAlignment: Alignment.center,
            bodyTextStyle: TextStyle(fontSize: 14),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        PageViewModel(
          title: "Pesan makan & belanja",
          body: "Pesan makanan kesukaanmu diantar segera",
          decoration: const PageDecoration(
            fullScreen: false,
            contentMargin: EdgeInsets.only(
              top: 180,
            ),
            bodyFlex: 2,
            bodyAlignment: Alignment.center,
            bodyTextStyle: TextStyle(fontSize: 14),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      globalFooter: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.5),
                ),
                onPressed: () {},
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.5),
                ),
                onPressed: () {
                  Get.offAllNamed(Routes.REGISTER);
                },
                child: const Text(
                  "Belum ada akun? Daftar dulu",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            RichText(
              text: const TextSpan(
                text: "Dengan masuk atau mendaftar, kamu menyetujui ",
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                      text: "Ketentuan layanan",
                      style: TextStyle(color: Colors.blue)),
                  TextSpan(text: " dan ", style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "Kebijakan  privasi",
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
            )
          ],
        ),
      ),
      allowImplicitScrolling: true,
      done: const Text(""),
      onDone: () {},
      next: const Text("", style: TextStyle(fontWeight: FontWeight.w600)),
      autoScrollDuration: 3000,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.blue,
        size: Size(10.0, 10.0),
        color: Color(0xFFD9D9D9),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
