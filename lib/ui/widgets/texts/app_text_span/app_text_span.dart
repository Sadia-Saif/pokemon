import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan(
      {super.key,
      required this.spanText1,
      required this.spanText2,
      this.spanText3,
      this.spanText4,
      required this.spanColor1,
      required this.spanColor2,
      this.spanColor3,
      this.spanColor4});
  final String spanText1;
  final String spanText2;
  final String? spanText3;
  final String? spanText4;
  final Color spanColor1;
  final Color spanColor2;
  final Color? spanColor3;
  final Color? spanColor4;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: spanText1,
        style:  TextStyle(color: spanColor1, fontSize: 12),
        children: <TextSpan>[
          TextSpan(
            text: spanText2,
            style: TextStyle(
              color: spanColor2,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: spanText3,
            style:  TextStyle(color: spanColor3),
          ),
          TextSpan(
            text: spanText4,
            style: TextStyle(
              color: spanColor4,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
