import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselShop extends StatelessWidget {
  List imageLists;
  CarouselShop({super.key, required this.imageLists});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 2.2,
      child: CarouselSlider(
        items: imageLists.map((imageUrl) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageUrl))),
            ),
          );
        }).toList(),
        options: CarouselOptions(
            height: 100, autoPlay: true, enlargeCenterPage: true),
      ),
    );
  }
}
