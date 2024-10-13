import 'package:flutter/material.dart';

class Searchfieldshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
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
