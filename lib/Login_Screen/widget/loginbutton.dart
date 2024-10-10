import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const ButtonLogin({super.key, required this.text, required this.callback});

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
        onPressed: callback,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
