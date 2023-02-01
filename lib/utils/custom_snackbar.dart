import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/configs/app_typography.dart';


class CustomSnackbar {
  static failure(
    BuildContext context,
    String message,
  ) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    final snackBar = SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      content: Container(
        padding: EdgeInsets.all(15.h),
        decoration: BoxDecoration(
          color: const Color(0xffAD0000),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.white,
              size: 34.h,
            ),
            SizedBox(
              width: 14.w,
            ),
            Expanded(
              child: Text(
                message,
                style: AppText.b1b!.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );

    return ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static success(
    BuildContext context,
    String message,
  ) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    final snackBar = SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      content: Container(
        padding: EdgeInsets.all(15.h),
        decoration: BoxDecoration(
          color: const Color(0xff03902B),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
              size: 34.h,
            ),
            SizedBox(
              width: 14.w,
            ),
            Expanded(
              child: Text(
                message,
                style: AppText.b1b!.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );

    return ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
