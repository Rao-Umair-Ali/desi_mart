import 'package:carousel_slider/carousel_slider.dart';
import 'package:desi_mart/Signup_Screen/widget/signupbutton.dart';
import 'package:desi_mart/Signup_Screen/widget/signupinkwell.dart';
import 'package:desi_mart/Signup_Screen/widget/signuptextfield.dart';
import 'package:desi_mart/shop_screen/widget/carouselShop.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  Shop({super.key});
  final List<String> imageList = [
    'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
    'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/Sunset-900x600.jpeg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset("Image.asset(assets/images/loginImage.jpg"),
              const Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("Karachi , pakistan")
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [CarouselShop(imageLists: imageList)],
        ));
  }
}
