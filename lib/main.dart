import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/controllers/auth_controller.dart';
import 'package:motion_hack/app/utils/loading.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authC.streamAuthStatus,
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.connectionState == ConnectionState.active) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: snapshot.data != null
                  ? Routes.SPLASH1
                  : Routes.ONBOARDING_PAGE,
              getPages: AppPages.routes,
            );
          }
          return loadingView();
        });
  }
}
