import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_view.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_textstyles.dart';
import 'package:zavi_mart/src/core/routes/app_pages.dart';
import 'package:zavi_mart/src/module/home/controllers/home_controller.dart';
import 'package:zavi_mart/src/module/home/widgets/home_tab_bar_delegate.dart';
import 'package:zavi_mart/src/module/home/widgets/promo_banner.dart';
import 'package:zavi_mart/src/module/home/widgets/tab_body.dart';

class HomeView extends BaseView<HomeController> {
  HomeView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      title: Text('Zavi Mart', style: kInter700W24S.copyWith(color: AppColors.white)),
      actions: [
        IconButton(
          onPressed: () {
            Get.toNamed(Routes.PROFILE);
          },
          icon: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: AppColors.white, width: 1),
            ),

            child: Icon(Icons.person, color: AppColors.white),
          ),
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          final controller = Get.find<HomeController>();
          return [
            const SliverAppBar(
              expandedHeight: 165.0,
              floating: false,
              pinned: false,
              snap: false,
              automaticallyImplyLeading: false,
              toolbarHeight: 0,
              elevation: 0,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: PromoBanner(),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: HomeTabBarDelegate(
                controller: controller.tabController,
                tabs: controller.tabs,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: controller.tabController,
          physics: const PageScrollPhysics(),
          children: controller.tabs.map((t) => TabBody(category: t.category)).toList(),
        ),
      ),
    );
  }
}
