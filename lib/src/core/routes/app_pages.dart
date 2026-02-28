import 'package:get/get.dart';
import 'package:zavi_mart/src/module/auth/bindings/auth_binding.dart';
import 'package:zavi_mart/src/module/auth/views/login_view.dart';
import 'package:zavi_mart/src/module/home/bindings/home_binding.dart';
import 'package:zavi_mart/src/module/home/views/home_view.dart';
import 'package:zavi_mart/src/module/splash/bindings/splash_binding.dart';
import 'package:zavi_mart/src/module/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final List<GetPage> routes = [
    GetPage(
      name: Routes.SPLASH,
      binding: SplashBinding(),
      page: () {
        return SplashView();
      },
    ),
    GetPage(
      name: Routes.HOME,
      binding: HomeBinding(),
      page: () {
        return HomeView();
      },
    ),
    GetPage(
      name: Routes.LOGIN,
      binding: AuthBinding(),
      page: () {
        return LoginView();
      },
    ),
  ];
}
