import 'package:desi_mart/shop_screen/widget/carouselShop.dart';
import 'package:desi_mart/shop_screen/widget/searchfieldShop.dart';
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                child: const Image(
                  image: AssetImage("assets/images/loginImage.jpg"),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              const Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("Karachi , pakistan")
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Searchfieldshop(),
              CarouselShop(imageLists: imageList),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exclusive Offer",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff53B175)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
