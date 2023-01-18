import 'package:flutter/material.dart';
import 'package:pokemon/constants/colors.dart';

class TextFormFieldContainer extends StatelessWidget {
  const TextFormFieldContainer({
    super.key,
    required this.hintText,
    required this.controllerText,
    this.readOnly = false,
    this.onTap,
    this.suffixicon = false,
    this.clearSuffixicon = false,
    this.clearAction,
    this.icon,
    this.minLines = 1,
    this.maxLines = 1,
    this.validator,
    this.keyboard = TextInputType.text,
    this.showBorder = true,
    this.sufixImage,
  });

  final TextEditingController controllerText;
  final String hintText;
  final String? sufixImage;
  final bool readOnly;
  final Function()? onTap;
  final bool suffixicon;
  final bool clearSuffixicon;
  final int minLines;
  final int maxLines;
  final IconData? icon;
  final String? Function(String?)? validator;
  final Function()? clearAction;

  final bool showBorder;
  final keyboard;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      minLines: minLines,
      maxLines: maxLines,
      readOnly: readOnly,
      validator: validator,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixicon && clearAction != null
            ? (controllerText.text != ''
                ? InkWell(
                    onTap: clearAction,
                    child: Icon(
                      Icons.cancel_outlined,
                      color: UIColors.primaryColor,
                    ),
                  )
                : Image.asset(
                    sufixImage!,
                    fit: BoxFit.scaleDown,
                    color: UIColors.primaryColor,
                  ))
            : (suffixicon
                ? Image.asset(
                    sufixImage!,
                    fit: BoxFit.scaleDown,
                    color: UIColors.primaryColor,
                  )
                : null),
        enabledBorder: showBorder
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: UIColors.primaryColor),
              )
            : null,
        focusedBorder: showBorder
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: UIColors.primaryColor),
              )
            : null,
      ),
      controller: controllerText,
    );
  }
}
