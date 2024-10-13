import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselShop extends StatelessWidget {
  final List imageLists;
  const CarouselShop({super.key, required this.imageLists});

  @override
  Widget build(BuildContext context) {
    // Get the screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth, // Use the full screen width
      child: CarouselSlider(
        items: imageLists.map((imageUrl) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(05),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 100, // Increase height for better display
          viewportFraction:
              1.0, // Controls the width of each item (90% of screen width)
          autoPlay: true, // Enable auto-scrolling
        ),
      ),
    );
  }
}
