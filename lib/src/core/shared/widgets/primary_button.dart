import 'package:flutter/material.dart';
import 'package:zavi_mart/src/core/constants/app_colors.dart';
import 'package:zavi_mart/src/core/constants/app_textstyles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Widget? child;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? titleColor;

  const PrimaryButton({
    super.key,
    this.onPressed,
    this.title,
    this.child,
    this.width,
    this.height,
    this.backgroundColor = AppColors.primary,
    this.titleColor = AppColors.white,
  }) : assert(title != null || child != null, 'Either title or child must be provided.');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: title != null
            ? Text(
                title!,
                style: kInter400W16S.copyWith(color: titleColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            : child!,
      ),
    );
  }
}
