import 'package:get/get.dart';
import 'package:zavi_mart/src/data/local/preference_manager.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<PreferenceManager>(PreferenceManager(), permanent: true);

    Get.put<AuthService>(AuthService(prefManager: PreferenceManager.to), permanent: true);
  }
}
