import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_controller.dart';
import 'package:zavi_mart/src/core/routes/app_pages.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class SplashController extends BaseController {
  final AuthService authService;
  SplashController({required this.authService});

  @override
  void onInit() {
    super.onInit();
    startApp();
  }

  Future<void> startApp() async {
    await Future.delayed(const Duration(seconds: 1));
    final token = await authService.loadAccessToken();
    if (token != '') {
      Get.offAllNamed(Routes.HOME);
      return;
    }
    Get.offAllNamed(Routes.LOGIN);
  }
}
