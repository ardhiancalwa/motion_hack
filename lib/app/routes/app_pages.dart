import 'package:get/get.dart';

import '../modules/analisis_page/bindings/analisis_page_binding.dart';
import '../modules/analisis_page/views/analisis_page_view.dart';
import '../modules/atur_akun_page/bindings/atur_akun_page_binding.dart';
import '../modules/atur_akun_page/views/atur_akun_page_view.dart';
import '../modules/chat_page/bindings/chat_page_binding.dart';
import '../modules/chat_page/views/chat_page_view.dart';
import '../modules/detail_progress_tracker/bindings/detail_progress_tracker_binding.dart';
import '../modules/detail_progress_tracker/views/detail_progress_tracker_view.dart';
import '../modules/edit_profile_page/bindings/edit_profile_page_binding.dart';
import '../modules/edit_profile_page/views/edit_profile_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/jadwal_konsultasi/bindings/jadwal_konsultasi_binding.dart';
import '../modules/jadwal_konsultasi/views/jadwal_konsultasi_view.dart';
import '../modules/konsultasi/bindings/konsultasi_binding.dart';
import '../modules/konsultasi/views/konsultasi_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/lupa_password_page/bindings/lupa_password_page_binding.dart';
import '../modules/lupa_password_page/views/lupa_password_page_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/notifikasi_page/bindings/notifikasi_page_binding.dart';
import '../modules/notifikasi_page/views/notifikasi_page_view.dart';
import '../modules/onboarding_page/bindings/onboarding_page_binding.dart';
import '../modules/onboarding_page/views/onboarding_page_view.dart';
import '../modules/pengalaman_rokok/bindings/pengalaman_rokok_binding.dart';
import '../modules/pengalaman_rokok/views/pengalaman_rokok_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/register_page/bindings/register_page_binding.dart';
import '../modules/register_page/views/register_page_view.dart';
import '../modules/reset_password_page/bindings/reset_password_page_binding.dart';
import '../modules/reset_password_page/views/reset_password_page_view.dart';
import '../modules/set_tanggal/bindings/set_tanggal_binding.dart';
import '../modules/set_tanggal/views/set_tanggal_view.dart';
import '../modules/splash1/bindings/splash1_binding.dart';
import '../modules/splash1/views/splash1_view.dart';
import '../modules/splash2/bindings/splash2_binding.dart';
import '../modules/splash2/views/splash2_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
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
    GetPage(
      name: _Paths.ONBOARDING_PAGE,
      page: () => const OnboardingPageView(),
      binding: OnboardingPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.SET_TANGGAL,
      page: () => SetTanggalView(),
      binding: SetTanggalBinding(),
    ),
    GetPage(
      name: _Paths.PENGALAMAN_ROKOK,
      page: () => const PengalamanRokokView(),
      binding: PengalamanRokokBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PROGRESS_TRACKER,
      page: () => DetailProgressTrackerView(),
      binding: DetailProgressTrackerBinding(),
    ),
    GetPage(
      name: _Paths.KONSULTASI,
      page: () => const KonsultasiView(),
      binding: KonsultasiBinding(),
    ),
    GetPage(
      name: _Paths.JADWAL_KONSULTASI,
      page: () => const JadwalKonsultasiView(),
      binding: JadwalKonsultasiBinding(),
    ),
    GetPage(
      name: _Paths.ANALISIS_PAGE,
      page: () => AnalisisPageView(),
      binding: AnalisisPageBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_PAGE,
      page: () => const ChatPageView(),
      binding: ChatPageBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI_PAGE,
      page: () => const NotifikasiPageView(),
      binding: NotifikasiPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE_PAGE,
      page: () => const EditProfilePageView(),
      binding: EditProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.ATUR_AKUN_PAGE,
      page: () => AturAkunPageView(),
      binding: AturAkunPageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH1,
      page: () => const Splash1View(),
      binding: Splash1Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH2,
      page: () => const Splash2View(),
      binding: Splash2Binding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => const NavigationView(),
      binding: NavigationBinding(),
    ),
  ];
}
