import 'package:get/get.dart';
import 'package:zavi_mart/src/module/splash/controllers/splash_controller.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(authService: AuthService.to),
      fenix: true,
    );
  }
}
