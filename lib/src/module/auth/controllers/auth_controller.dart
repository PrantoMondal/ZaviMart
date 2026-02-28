import 'package:flutter/material.dart';
import 'package:zavi_mart/src/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/routes/app_pages.dart';
import 'package:zavi_mart/src/data/remote/auth/auth_remote_datasource.dart';
import 'package:zavi_mart/src/services/auth_service.dart';

class AuthController extends BaseController {
  final AuthRemoteDatasource authRemoteDatasource;
  final AuthService authService;
  AuthController({required this.authRemoteDatasource, required this.authService});
  var isLoading = false.obs;
  var obscurePassword = true.obs;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void login() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading.value = true;
    callDataService(
      showLoadingStatus: false,
      authRemoteDatasource.login(
        username: usernameController.text,
        password: passwordController.text,
      ),
      onSuccess: (response) {
        isLoading.value = false;
        logger.d(response);
        authService.saveAccessToken(response);
        Get.offAndToNamed(Routes.HOME);
      },
      onError: (error) {
        isLoading.value = false;
      },
    );
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
