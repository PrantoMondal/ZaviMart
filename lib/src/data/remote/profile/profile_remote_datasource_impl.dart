import 'package:zavi_mart/src/core/base/base_remote_datasource.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/constants/app_strings.dart';
import 'package:zavi_mart/src/data/model/user.dart';
import 'package:zavi_mart/src/data/remote/profile/profile_remote_datasource.dart';

class ProfileRemoteDatasourceImpl extends BaseRemoteDatasource
    implements ProfileRemoteDatasource {
  static ProfileRemoteDatasourceImpl get to => Get.find<ProfileRemoteDatasourceImpl>();

  @override
  Future<User> getProfile({required int userId}) async {
    try {
      final endpoint = "$baseUrl${AppStrings.urlGetUser}/$userId";
      final api = dioClient.get(endpoint);
      final response = await callApi(api);
      final json = response.data;
      logger.d(json);
      return User.fromJson(json);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
}
