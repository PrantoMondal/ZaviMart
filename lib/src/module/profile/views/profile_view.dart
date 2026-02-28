import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_view.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_textstyles.dart';
import 'package:zavi_mart/src/core/constants/app_values.dart';
import 'package:zavi_mart/src/module/profile/controllers/profile_controller.dart';

class ProfileView extends BaseView<ProfileController> {
  ProfileView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      title: Text(
        'Profile',
        style: kInter700W24S.copyWith(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      final user = controller.user.value;

      if (user == null) {
        return const Center(child: CircularProgressIndicator());
      }

      return SingleChildScrollView(
        padding: const EdgeInsets.all(AppValues.gap),
        child: Column(
          children: [
            _ProfileHeader(
              name: '${user.name?.firstname} ${user.name?.lastname}',
              email: user.email ?? '-',
            ),

            const SizedBox(height: 20),

            _InfoCard(
              children: [
                _InfoTile(label: 'Username', value: user.username ?? '-'),
                _InfoTile(label: 'Phone', value: user.phone ?? '-'),
                _InfoTile(
                  label: 'Address',
                  value:
                      '${user.address?.street}, ${user.address?.city}, ${user.address?.zipcode}',
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class _ProfileHeader extends StatelessWidget {
  final String name;
  final String email;

  const _ProfileHeader({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, size: 36, color: Colors.grey),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kInter700W24S.copyWith(fontSize: 18, color: AppColors.white),
                ),
                const SizedBox(height: 4),
                Text(email, style: kInter400W14S.copyWith(color: AppColors.lightGrey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const _InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              label,
              style: kInter400W14S.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              style: kInter400W14S.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final List<Widget> children;

  const _InfoCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(.05),
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }
}
