import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      this.textcolors,
      this.textString,
      this.textSize,
      this.textAlign,
      this.fontWeight})
      : super(key: key);

  final Color? textcolors;
  final String? textString;
  final double? textSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$textString',
      style: TextStyle(
          color: textcolors ?? Colors.yellow.shade600,
          fontSize: textSize ?? 30,
          fontWeight: fontWeight),
          textAlign: textAlign,
    );
  }
}
