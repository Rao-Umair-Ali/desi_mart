import 'package:flutter/material.dart';

class ButtonSignup extends StatelessWidget {
  final String text;
  const ButtonSignup({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364,
      height: 67,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff53B175),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19))),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
