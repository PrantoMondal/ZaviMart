import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_textstyles.dart';
import 'package:zavi_mart/src/core/constants/app_values.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.hintText,
    this.labelText,
    this.onChange,
    this.onSave,
    this.maxLine = 1,
    this.radius,
    this.isObscure = false,
    this.enabled = true,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.counter,
    this.maxLength,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.suffixOnTap,
    this.prefixText,
  }) : assert(
         controller != null || onChange != null || onSave != null,
         'Either controller or onChange/onSave must be provided',
       );

  final String hintText;
  final String? labelText;
  final int? maxLine;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final FormFieldSetter<String>? onSave;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? counter;
  final int? maxLength;
  final double? radius;
  final String? initialValue;
  final bool isObscure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final TextEditingController? controller;
  final VoidCallback? suffixOnTap;
  final String? prefixText;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius ?? AppValues.radius_12);

    final enabledBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: AppColors.lightGrey, width: 1.2),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: AppColors.primary, width: 1.8),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: AppColors.red, width: 1.4),
    );

    final disabledBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
    );

    return Container(
      margin: const EdgeInsets.only(top: AppValues.gapXSmall),
      child: TextFormField(
        controller: controller,
        enabled: enabled,
        obscureText: isObscure,
        maxLines: maxLine,
        maxLength: maxLength,
        textAlignVertical: TextAlignVertical.top,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.done,
        validator: validator,
        onChanged: onChange,
        inputFormatters: inputFormatters,
        initialValue: initialValue,
        style: kInter400W14S.copyWith(color: AppColors.deepGrey),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onSaved: onSave,
        decoration: InputDecoration(
          prefixText: prefixText,
          prefixStyle: kInter400W14S.copyWith(color: AppColors.deepGrey),
          errorMaxLines: 2,
          contentPadding: const EdgeInsets.all(AppValues.gap),
          filled: true,
          suffixIcon: suffixIcon != null
              ? GestureDetector(onTap: suffixOnTap, child: suffixIcon)
              : null,
          prefixIcon: prefixIcon ?? const SizedBox(),
          prefixIconConstraints: prefixIcon == null
              ? const BoxConstraints(minWidth: AppValues.gapSmall)
              : null,
          fillColor: AppColors.white,
          hintText: hintText,
          labelText: labelText,
          hintStyle: kInter400W14S.copyWith(color: AppColors.grey),
          labelStyle: kInter400W16S.copyWith(color: AppColors.grey),
          counter: counter,
          alignLabelWithHint: true,
          enabledBorder: enabledBorder,
          disabledBorder: disabledBorder,
          errorBorder: errorBorder,
          focusedErrorBorder: errorBorder,
          focusedBorder: focusedBorder,
        ),
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
