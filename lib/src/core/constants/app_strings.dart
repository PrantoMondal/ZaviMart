import 'package:zavi_mart/src/core/config/build_config.dart';

abstract class AppStrings {
  static final _config = BuildConfig.instance.envConfig;

  static final spAccessToken = "${_config.packageName}.user_access_token";

  static const urlLogin = "auth/login";
  static const urlGetProducts = "products";
  static const urlGetUser = "users";
}
