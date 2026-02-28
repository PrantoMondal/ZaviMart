import 'package:flutter/material.dart';
import 'package:zavi_mart/src/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/routes/app_pages.dart';

class AuthController extends BaseController {
  var isLoading = false.obs;
  var obscurePassword = true.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;

    Get.snackbar(
      'Success',
      'Logged in successfully!',
      snackPosition: SnackPosition.BOTTOM,
    );
    Get.offAndToNamed(Routes.HOME);
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
