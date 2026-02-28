import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_controller.dart';
import 'package:zavi_mart/src/core/routes/app_pages.dart';

class SplashController extends BaseController {
  SplashController();

  @override
  void onInit() {
    super.onInit();
    startApp();
  }

  Future<void> startApp() async {
    await Future.delayed(const Duration(seconds: 1));

    Get.offAllNamed(Routes.LOGIN);
  }
}
