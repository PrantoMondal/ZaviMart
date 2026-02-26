import 'package:get/get.dart';
import 'package:zavi_mart/src/data/local/preference_manager.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<PreferenceManager>(PreferenceManager(), permanent: true);
  }
}
