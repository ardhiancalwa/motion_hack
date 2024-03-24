import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/lupa_password_page/bindings/lupa_password_page_binding.dart';
import '../modules/lupa_password_page/views/lupa_password_page_view.dart';
import '../modules/reset_password_page/bindings/reset_password_page_binding.dart';
import '../modules/reset_password_page/views/reset_password_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.RESET_PASSWORD_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_PASSWORD_PAGE,
      page: () => const LupaPasswordPageView(),
      binding: LupaPasswordPageBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD_PAGE,
      page: () => const ResetPasswordPageView(),
      binding: ResetPasswordPageBinding(),
    ),
  ];
}
