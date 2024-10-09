import 'package:flutter/material.dart';

class TextfieldLogin extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  const TextfieldLogin({super.key, required this.hinttext, required this.icon});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.black),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Color.fromARGB(
                  255, 5, 5, 5)), // No color for the focused state
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Color(0xffE2E2E2)), // No color for the focused state
        ),
      ),
    );
  }
}
