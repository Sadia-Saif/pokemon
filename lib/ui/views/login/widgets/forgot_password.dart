part of "../login.dart";

class CustomForgotPassword extends StatelessWidget {
  const CustomForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 22.0,
        width: 22.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.yellow.shade700,
          border: Border.all(color: Colors.yellow.shade800),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
          child: Icon(
            Icons.done,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      const SizedBox(width: 8),
      const Text(
        "Remember me",
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      const Spacer(),
      Text(
        "Forgot Password?",
        style: TextStyle(
            color: Colors.yellow.shade800,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
