import 'package:flutter/material.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_textstyles.dart';

class HomeTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabController controller;
  final List<({String label, String? category})> tabs;

  const HomeTabBarDelegate({required this.controller, required this.tabs});

  static const double height = 46.0;

  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: height,
      color: AppColors.white,
      child: TabBar(
        controller: controller,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: AppColors.primary,
        unselectedLabelColor: AppColors.grey,
        indicatorColor: AppColors.primary,
        indicatorWeight: 2.5,
        dividerColor: Colors.transparent,
        labelStyle: kInter500W14S,
        unselectedLabelStyle: kInter400W14S,
        tabs: tabs.map((t) => Tab(text: t.label)).toList(),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant HomeTabBarDelegate old) =>
      controller != old.controller || tabs != old.tabs;
}
