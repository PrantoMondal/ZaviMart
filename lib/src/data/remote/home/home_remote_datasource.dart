import 'package:zavi_mart/src/data/model/product_response.dart';

abstract class HomeRemoteDatasource {
  Future<List<ProductResponse>> getProducts();
}
