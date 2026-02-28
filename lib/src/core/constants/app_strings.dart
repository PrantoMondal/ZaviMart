import 'package:zavi_mart/src/core/config/build_config.dart';

abstract class AppStrings {
  static final _config = BuildConfig.instance.envConfig;

  static String get appName => _config.appName;
}
