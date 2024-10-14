import 'package:flutter/material.dart';

class ListViewShop extends StatelessWidget {
  List<Map<dynamic, dynamic>> itemList = [
    {
      "itemName": "Apple",
      "items": "7 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/apple.png"
    },
    {
      "itemName": "Bell pepper",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/bellpeper.png"
    },
    {
      "itemName": "ginger",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/ginger.png"
    },
    {
      "itemName": "Apple",
      "items": "7 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/apple.png"
    },
    {
      "itemName": "Bell pepper",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/bellpeper.png"
    },
    {
      "itemName": "ginger",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/ginger.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 248,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE2E2E2)),
                borderRadius: BorderRadius.circular(18)),
            width: 173,
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Container(
                    height: 62.5,
                    width: 103.43,
                    child: Image.asset(itemList[index]["itemPicture"]),
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemList[index]["itemName"],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      itemList[index]["items"],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C7C7C)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      itemList[index]["itemValue"],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          border: Border.all(color: Color(0xff53B175)),
                          borderRadius: BorderRadius.circular(17)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                        ),
                        color: Colors.white,
                        iconSize: 24,
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
