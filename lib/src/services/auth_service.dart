import 'package:get/get.dart';
import 'package:zavi_mart/src/core/config/build_config.dart';
import 'package:zavi_mart/src/core/constants/app_strings.dart';
import 'package:zavi_mart/src/data/local/preference_manager.dart';

class AuthService extends GetxService {
  final PreferenceManager prefManager;

  AuthService({required this.prefManager});

  static AuthService get to => Get.find();

  final _accessToken = ''.obs;
  final _logger = BuildConfig.instance.envConfig.logger;

  String get accessToken => _accessToken.value;
  bool get isLoggedIn => accessToken.isNotEmpty;

  Future<void> saveAccessToken(String token) async {
    try {
      final status = await prefManager.setString(AppStrings.spAccessToken, token);

      if (!status) {
        throw Exception("Failed to save access token");
      }

      _accessToken.value = token;
      _logger.d("Access token saved");
    } catch (error, stacktrace) {
      _logger.e(error, stackTrace: stacktrace);
      rethrow;
    }
  }

  Future<String> loadAccessToken() async {
    try {
      final token = await prefManager.getString(AppStrings.spAccessToken);
      _accessToken.value = token;
      return token;
    } catch (error, stacktrace) {
      _logger.e(error, stackTrace: stacktrace);
      rethrow;
    }
  }

  Future<void> clearAccessToken() async {
    try {
      await prefManager.remove(AppStrings.spAccessToken);
      _accessToken.value = '';
    } catch (error, stacktrace) {
      _logger.e(error, stackTrace: stacktrace);
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await clearAccessToken();
    } catch (error, stacktrace) {
      _logger.e(error, stackTrace: stacktrace);
      rethrow;
    }
  }
}
