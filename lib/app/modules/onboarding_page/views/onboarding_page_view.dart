import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motion_hack/app/routes/app_pages.dart';
import 'package:motion_hack/app/shared/theme/color.dart';

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
    return Scaffold(
      appBar: AppBar(),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Jalan Jalan Menuju\nKehiduapan Sehat",
            image: Image.asset("assets/images/items/onboarding1.png"),
            body:
                "Temukan langkah pertamamu menuju hidup bebas asap rokok bersama kami",
            decoration: const PageDecoration(
              fullScreen: false,
              bodyFlex: 2,
              bodyAlignment: Alignment.center,
              titlePadding: EdgeInsets.only(bottom: 10),
              bodyTextStyle: TextStyle(
                color: Color(0xFF1D242D),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
              imageAlignment: Alignment.center,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageViewModel(
            title: "Dukungan Penuh untuk\nPengurangan Kebiasan Merokok",
            image: Image.asset("assets/images/items/onboarding2.png"),
            body:
                "Temukan langkah pertamamu menuju hidup bebas asap rokok bersama kami",
            decoration: const PageDecoration(
              fullScreen: false,
              bodyFlex: 2,
              bodyAlignment: Alignment.center,
              titlePadding: EdgeInsets.only(bottom: 10),
              bodyTextStyle: TextStyle(
                color: Color(0xFF1D242D),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
              imageAlignment: Alignment.center,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageViewModel(
            title: "Mulailah Hari Baru \nTanpa Asap Rokok",
            image: Image.asset("assets/images/items/onboarding3.png"),
            body:
                "Aplikasi Lungscare siap menemanimu menuju gaya hidup sehat dan bebas dari merokok",
            decoration: const PageDecoration(
              fullScreen: false,
              bodyFlex: 2,
              bodyAlignment: Alignment.center,
              titlePadding: EdgeInsets.only(bottom: 10),
              bodyTextStyle: TextStyle(
                color: Color(0xFF1D242D),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
              imageAlignment: Alignment.center,
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
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.5),
                  ),
                  onPressed: () {
                    Get.offAllNamed(Routes.LOGIN_PAGE);
                  },
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
                      side: BorderSide(
                        color: primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.5),
                  ),
                  onPressed: () {
                    Get.offAllNamed(Routes.REGISTER_PAGE);
                  },
                  child: Text(
                    "Belum ada akun? Daftar dulu",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              RichText(
                text: TextSpan(
                  text: "Dengan masuk atau mendaftar, kamu menyetujui ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "Ketentuan layanan",
                      style: TextStyle(color: primaryColor),
                    ),
                    TextSpan(
                      text: " dan ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: "Kebijakan  privasi",
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        infiniteAutoScroll: true, 
        allowImplicitScrolling: true,
        done: const Text(""),
        onDone: () {},
        next: const Text("", style: TextStyle(fontWeight: FontWeight.w600)),
        autoScrollDuration: 3000,
        showBackButton: false,
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.symmetric(horizontal: 16),
        dotsDecorator: DotsDecorator(
          activeColor: primaryColor,
          size: Size(10.0, 10.0),
          color: Color(0xFFD9D9D9),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
