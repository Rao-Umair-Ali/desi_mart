import 'package:desi_mart/shop_screen/widget/addBasket.dart';
import 'package:flutter/material.dart';

class ListViewShop extends StatelessWidget {
  final List list;
  ListViewShop({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 248,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          String itemPicture =
              list[index]["itemPicture"] ?? "assets/images/placeholder.png";
          String itemName = list[index]["itemName"] ?? "Unknown Item";
          String itemValue = list[index]["itemValue"] ?? "Unknown Value";
          String items = list[index]["items"] ?? "Unknown";
          String itemDetails =
              list[index]["itemdetail"] ?? "No details available";

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
                    child: Image.asset(list[index]["itemPicture"]),
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index]["itemName"],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      list[index]["items"],
                      style: const TextStyle(
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
                      list[index]["itemValue"],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          border: Border.all(color: Color(0xff53B175)),
                          borderRadius: BorderRadius.circular(17)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddBasket(
                                    image: itemPicture,
                                    itemName: itemName,
                                    itemValue: itemValue,
                                    items: items,
                                    itemDetails: itemDetails)),
                          );
                        },
                        icon: const Icon(
                          Icons.add,
                        ),
                        color: Colors.white,
                        iconSize: 24,
                        padding: const EdgeInsets.all(0),
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
