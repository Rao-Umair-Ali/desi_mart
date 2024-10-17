import 'package:desi_mart/shop_screen/widget/carouselShop.dart';
import 'package:desi_mart/shop_screen/widget/groceriesSlider.dart';
import 'package:desi_mart/shop_screen/widget/listviewshop.dart';
import 'package:desi_mart/shop_screen/widget/searchfieldShop.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  Shop({super.key});
  final List<Map<dynamic, dynamic>> itemList = [
    {
      "itemName": "Apple",
      "items": "7 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/apple.png",
      "itemdetail":
          "i am bell pepper in a Container with Alignment. The default alignment for Text inside a Column is centered, so you need to override that.Heres how you can align them to the left side of the page"
    },
    {
      "itemName": "Bell pepper",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/bellPeper.png",
      "itemdetail": "i am bell pepper"
    },
    {
      "itemName": "ginger",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/ginger.png",
      "itemdetail": "i am ginger"
    },
    {
      "itemName": "Apple",
      "items": "7 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/apple.png",
      "itemdetail": "i am apple"
    },
    {
      "itemName": "Bell pepper",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/bellPeper.png",
      "itemdetail": "i am bell pepper"
    },
    {
      "itemName": "ginger",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/ginger.png",
      "itemdetail": "i am ginger"
    },
  ];
  void ontap() {}
  final List<String> imageList = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Searchfieldshop(),
                CarouselShop(imageLists: imageList, enableInfiniteScroll: true),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exclusive Offer",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListViewShop(
                  list: itemList,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Selling",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListViewShop(
                  list: itemList,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Groceries",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GroceriesSlider(
                          groceryName: "Pulses",
                          imageLink: "assets/images/pulses.png",
                          colorName: Color(0xffF8A44C)),
                      SizedBox(
                        width: 10,
                      ),
                      GroceriesSlider(
                          groceryName: "Rice",
                          imageLink: "assets/images/rice.png",
                          colorName: Color(0xff53B175)),
                      SizedBox(
                        width: 10,
                      ),
                      GroceriesSlider(
                          groceryName: "Pulses",
                          imageLink: "assets/images/pulses.png",
                          colorName: Color.fromARGB(255, 47, 172, 172)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListViewShop(
                  list: itemList,
                ),
              ],
            ),
          ),
        ));
  }
}
