import 'package:desi_mart/shop_screen/widget/addButton.dart';
import 'package:flutter/material.dart';

class AddBasket extends StatelessWidget {
  final String image;
  final String itemName;
  final String itemValue;
  final String items;
  final String itemDetails;

  const AddBasket(
      {super.key,
      required this.image,
      required this.itemName,
      required this.itemValue,
      required this.items,
      required this.itemDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F3F2),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.vertical_align_top_outlined,
                  size: 30,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(18),
                        bottomStart: Radius.circular(18))),
                height: 371,
                width: 412,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                      height: 199,
                      width: 329,
                      child: Image.asset(
                        image,
                        fit: BoxFit.contain,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  itemName,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  items,
                  style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.minimize_rounded,
                              size: 30,
                            )),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 30),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 30,
                              color: Color(0xff53B175),
                            ))
                      ],
                    ),
                    Text(
                      itemValue,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey, // Line color
                height: 10, // Space above and below the line
                thickness: 1, // Line thickness
                indent: 20, // Empty space on the leading edge of the line
                endIndent: 20, // Empty space on the trailing edge of the line
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0), // Padding to control spacing
                child: Align(
                  alignment: Alignment.centerLeft, // Align text to the left
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align text inside the Column to the start (left)
                    children: [
                      const Text(
                        "Product Details",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold), // Optional styling
                      ),
                      SizedBox(height: 5), // Optional space between texts
                      Text(
                        itemDetails,
                        style: TextStyle(
                            color: Color(0xff7C7C7C),
                            fontSize: 16), // Optional styling
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Addbutton(),
            ],
          ),
        ),
      ),
    );
  }
}
