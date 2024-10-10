import 'package:flutter/material.dart';

class TextfieldSignup extends StatefulWidget {
  final String hinttext;
  final IconData icon;
  final TextInputType textType;
  final bool obsecuretext;
  const TextfieldSignup(
      {super.key,
      required this.hinttext,
      required this.icon,
      required this.textType,
      required this.obsecuretext});

  @override
  State<TextfieldSignup> createState() => _TextfieldSignupState();
}

class _TextfieldSignupState extends State<TextfieldSignup> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText =
        widget.obsecuretext; // Initialize the state based on the widget's value
  }

  void _toggleObscureText() {
    if (widget.obsecuretext) {
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
      obscureText: widget.obsecuretext ? _obscureText : false,
    );
  }
}
