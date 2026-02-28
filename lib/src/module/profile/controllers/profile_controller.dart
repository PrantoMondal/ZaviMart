import 'dart:convert';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_controller.dart';
import 'package:zavi_mart/src/data/model/user.dart';
import 'package:zavi_mart/src/data/remote/profile/profile_remote_datasource.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class ProfileController extends BaseController {
  final AuthService authService;
  final ProfileRemoteDatasource profileRemoteDataSource;

  ProfileController({required this.authService, required this.profileRemoteDataSource});

  final Rx<User?> user = Rx(null);

  @override
  void onInit() async {
    super.onInit();
    final token = await authService.loadAccessToken();
    final userId = _extractUserIdFromToken(token);
    await _loadProfile(userId);
  }

  Future<void> _loadProfile(int userId) async {
    await callDataService(
      profileRemoteDataSource.getProfile(userId: userId),
      onSuccess: (User response) {
        user.value = response;
        logger.d('Profile loaded: ${response.username}');
      },
    );
  }

  int _extractUserIdFromToken(String token) {
    final payload = token.split('.')[1];
    final normalized = base64Url.normalize(payload);
    final decoded = utf8.decode(base64Url.decode(normalized));
    return jsonDecode(decoded)['sub'] as int;
  }
}
