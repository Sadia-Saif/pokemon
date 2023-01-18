part of '../../registration/signup.dart';

class PasswordHints extends StatelessWidget {
  const PasswordHints({super.key, required this.textString});

  final String textString;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle_rounded,
          color: Colors.green.shade800,
          size: 12,
        ),
        const SizedBox(width: 5),
        Align(
          alignment: Alignment.topLeft,
          child: CustomText(
            textString: textString,
            textSize: 15,
            textcolors: Colors.green.shade800,
          ),
        ),
      ],
    );
  }
}
