import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/configs/app_typography_ext.dart';
import 'package:pokemon/configs/configs.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Widget? child;
  final Color? color;
  final double? height;
  final Color? borderColor;
  const PrimaryButton({
    Key? key,
    this.title,
    required this.onPressed,
    this.height,
    this.child,
    this.color,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));

    return SizedBox(
      height: height ?? 75.h,
      width: AppDimensions.size!.width,
      child: Bounce(
        duration: const Duration(milliseconds: 110),
        onPressed: onPressed!,
        child: Container(
          decoration: BoxDecoration(
            color: color ?? AppTheme.c.accent,
            borderRadius: UIProps.radiusXL,
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: 1.5,
            ),
          ),
          child: Center(
            child: child ??
                Text(
                  title!,
                  style: AppText.h2b!.cl(
                    Colors.white,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
