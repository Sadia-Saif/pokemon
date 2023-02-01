import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/configs/app_theme.dart';
import 'package:pokemon/configs/ui_props.dart';


class AppIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final bool shadow;
  const AppIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.color,
    this.height,
    this.width,
    this.shadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));

    return InkWell(
      borderRadius: BorderRadius.circular(360),
      onTap: onPressed,
      child: Container(
        height: height ?? 40.h,
        width: width ?? 40.w,
        decoration: BoxDecoration(
          color: color ?? AppTheme.c.accent,
          shape: BoxShape.circle,
          boxShadow: shadow ? UIProps.cardShadow : [],
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
