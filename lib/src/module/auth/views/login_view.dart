import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zavi_mart/src/core/base/base_view.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_textstyles.dart';
import 'package:zavi_mart/src/core/constants/app_values.dart';
import 'package:zavi_mart/src/core/shared/utils/validators.dart';
import 'package:zavi_mart/src/core/shared/widgets/input_text_field.dart';
import 'package:zavi_mart/src/core/shared/widgets/primary_button.dart';
import '../controllers/auth_controller.dart';

class LoginView extends BaseView<AuthController> {
  LoginView({super.key});
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 80),

              Container(
                height: 80,
                width: 80,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: AppValues.icon_28,
                ),
              ),

              const SizedBox(height: 40),

              Text(
                "Welcome Back",
                style: kInter700W24S.copyWith(color: AppColors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Sign in to continue shopping",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              InputTextField(
                controller: controller.usernameController,
                hintText: "Enter your username",
                keyboardType: TextInputType.emailAddress,
                validator: Validators.validateRequiredField,
              ),

              Obx(
                () => InputTextField(
                  controller: controller.passwordController,
                  hintText: "Enter your password",
                  isObscure: controller.obscurePassword.value,
                  validator: Validators.validateRequiredField,
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.obscurePassword.value =
                          !controller.obscurePassword.value;
                    },
                    icon: Icon(
                      controller.obscurePassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: AppValues.gapXLarge),

              Obx(
                () => controller.isLoading.value
                    ? const CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.primary,
                      )
                    : PrimaryButton(
                        width: double.infinity,
                        title: "Login",
                        onPressed: controller.isLoading.value
                            ? null
                            : () {
                                controller.login();
                              },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
