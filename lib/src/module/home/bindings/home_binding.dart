import 'package:get/get.dart';
import 'package:zavi_mart/src/data/remote/home/home_remote_datasource_impl.dart';
import 'package:zavi_mart/src/module/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRemoteDatasourceImpl());
    Get.lazyPut<HomeController>(
      () => HomeController(remoteDatasource: HomeRemoteDatasourceImpl.to),
      fenix: true,
    );
  }
}
