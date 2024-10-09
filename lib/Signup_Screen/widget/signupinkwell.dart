import 'package:flutter/material.dart';

class InkwellSignup extends StatelessWidget {
  final Color colorName;
  final String textName;
  const InkwellSignup(
      {super.key, required this.colorName, required this.textName});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      child: Text(
        textName,
        style: TextStyle(
          color: colorName,
        ),
      ),
      onTap: () {
        print("object");
      },
    );
  }
}
