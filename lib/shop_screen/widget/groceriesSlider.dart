import 'package:flutter/material.dart';

class GroceriesSlider extends StatelessWidget {
  final String groceryName;
  final String imageLink;
  final Color colorName;
  const GroceriesSlider(
      {super.key,
      required this.groceryName,
      required this.imageLink,
      required this.colorName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorName,
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(18)),
      height: 105,
      width: 248.19,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(imageLink),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  groceryName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
