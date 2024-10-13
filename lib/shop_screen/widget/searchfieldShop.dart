import 'package:flutter/material.dart';

class Searchfieldshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Colors.deepOrangeAccent,
      style: TextStyle(
          color: Color(0xff7C7C7C), fontSize: 14, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF2F3F2),
        hintText: "Search Store",
        suffixIcon: Icon(Icons.search),
        hintStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
              width: 2,
              color: Colors.transparent,
              style: BorderStyle.solid), // No color for the focused state
        ),
      ),
    );
  }
}
