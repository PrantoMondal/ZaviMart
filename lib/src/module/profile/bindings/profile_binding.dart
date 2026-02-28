import 'package:get/get.dart';
import 'package:zavi_mart/src/data/remote/profile/profile_remote_datasource_impl.dart';
import 'package:zavi_mart/src/module/profile/controllers/profile_controller.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileRemoteDatasourceImpl(), fenix: true);
    Get.lazyPut<ProfileController>(
      () => ProfileController(
        authService: AuthService.to,
        profileRemoteDataSource: ProfileRemoteDatasourceImpl.to,
      ),
      fenix: true,
    );
  }
}
