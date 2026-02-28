import 'package:zavi_mart/src/core/base/base_remote_datasource.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/constants/app_strings.dart';
import 'package:zavi_mart/src/data/remote/auth/auth_remote_datasource.dart';

class AuthRemoteDatasourceImpl extends BaseRemoteDatasource
    implements AuthRemoteDatasource {
  static AuthRemoteDatasourceImpl get to => Get.find<AuthRemoteDatasourceImpl>();

  @override
  Future<String> login({required String username, required String password}) async {
    try {
      final endpoint = "$baseUrl${AppStrings.urlLogin}";
      final api = dioClient.post(
        endpoint,
        data: {"username": username, "password": password},
      );
      final response = await callApi(api);
      final json = response.data;
      logger.d(json);
      return json['token'];
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
}
