import 'package:zavi_mart/src/core/base/base_remote_datasource.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/constants/app_strings.dart';
import 'package:zavi_mart/src/data/model/product_response.dart';
import 'package:zavi_mart/src/data/remote/home/home_remote_datasource.dart';

class HomeRemoteDatasourceImpl extends BaseRemoteDatasource
    implements HomeRemoteDatasource {
  static HomeRemoteDatasourceImpl get to => Get.find<HomeRemoteDatasourceImpl>();

  @override
  Future<List<ProductResponse>> getProducts() async {
    try {
      final endpoint = "$baseUrl${AppStrings.urlGetProducts}";
      final api = dioClient.get(endpoint);
      final response = await callApi(api);
      final json = response.data;
      logger.d(json);
      return ProductResponse.fromJsonList(json);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
}
