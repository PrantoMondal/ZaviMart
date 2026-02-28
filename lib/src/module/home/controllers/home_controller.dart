import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_controller.dart';
import 'package:zavi_mart/src/data/model/product_response.dart';
import 'package:zavi_mart/src/data/remote/home/home_remote_datasource.dart';

class HomeController extends BaseController with GetTickerProviderStateMixin {
  final HomeRemoteDatasource remoteDatasource;

  HomeController({required this.remoteDatasource});

  late final TabController tabController;

  final RxList<ProductResponse> products = <ProductResponse>[].obs;
  final RxBool isLoading = false.obs;
  static const int tabCount = 5;

  final List<({String label, String? category})> tabs = [
    (label: 'All', category: null),
    (label: 'Electronics', category: 'electronics'),
    (label: 'Men', category: "men's clothing"),
    (label: 'Woman', category: "women's clothing"),
    (label: 'Jewelery', category: 'jewelery'),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabCount, vsync: this);
    getProducts();
  }

  void getProducts() async {
    isLoading.value = true;
    callDataService(
      showLoadingStatus: false,
      remoteDatasource.getProducts(),
      onSuccess: (response) {
        isLoading.value = false;
        products.value = response;
      },
      onError: (error) {
        isLoading.value = false;
      },
    );
  }
}
