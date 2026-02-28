import 'package:get/get.dart';
import 'package:zavi_mart/src/data/remote/auth/auth_remote_datasource_impl.dart';
import 'package:zavi_mart/src/module/auth/controllers/auth_controller.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRemoteDatasourceImpl());
    Get.lazyPut<AuthController>(
      () => AuthController(
        authRemoteDatasource: AuthRemoteDatasourceImpl.to,
        authService: AuthService.to,
      ),
      fenix: true,
    );
  }
}
