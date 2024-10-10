import 'package:flutter/material.dart';

class TextfieldLogin extends StatefulWidget {
  final String hinttext;
  final IconData icon;
  final TextInputType textType;
  final TextEditingController controller;
  final bool obsecureText;

  const TextfieldLogin({
    super.key,
    required this.hinttext,
    required this.icon,
    required this.textType,
    required this.controller,
    required this.obsecureText,
  });

  @override
  State<TextfieldLogin> createState() => _TextfieldLoginState();
}

class _TextfieldLoginState extends State<TextfieldLogin> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText =
        widget.obsecureText; // Initialize the state based on the widget's value
  }

  void _toggleObscureText() {
    if (widget.obsecureText) {
      setState(() {
        _obscureText = !_obscureText; // Toggle the obscure text state
      });
    } else {
      setState(() {
        _obscureText = !_obscureText; // Toggle the obscure text state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.textType,
      style: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        prefixIcon:
            IconButton(icon: Icon(widget.icon), onPressed: _toggleObscureText),
        hintText: widget.hinttext,
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
      obscureText: widget.obsecureText ? _obscureText : false,
    );
  }
}
