import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_values.dart';
import 'package:zavi_mart/src/data/model/product_response.dart';
import 'package:zavi_mart/src/module/home/controllers/home_controller.dart';
import 'package:zavi_mart/src/module/home/widgets/product_card.dart';

class TabBody extends StatelessWidget {
  final String? category;

  const TabBody({super.key, required this.category});

  Future<void> _onRefresh() async {
    Get.find<HomeController>().getProducts();
    await Future.delayed(const Duration(milliseconds: 900));
  }

  List<ProductResponse> _filtered(List<ProductResponse> all) {
    if (category == null) return all;
    return all.where((p) => p.category == category).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final all = Get.find<HomeController>().products;

      if (all.isEmpty) {
        return RefreshIndicator(
          onRefresh: _onRefresh,
          color: AppColors.primary,
          child: CustomScrollView(
            key: PageStorageKey('tab_$category'),
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: const [
              SliverFillRemaining(
                child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
              ),
            ],
          ),
        );
      }

      final products = _filtered(all);

      return RefreshIndicator(
        onRefresh: _onRefresh,
        color: AppColors.primary,
        child: CustomScrollView(
          key: PageStorageKey('tab_$category'),
          physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          slivers: [
            if (products.isEmpty)
              const SliverFillRemaining(
                child: Center(
                  child: Text(
                    'No products in this category.',
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppValues.gapXSmall,
                  vertical: AppValues.gapXSmall,
                ),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 280,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (_, i) => ProductCard(product: products[i]),
                    childCount: products.length,
                  ),
                ),
              ),
          ],
        ),
      );
    });
  }
}
