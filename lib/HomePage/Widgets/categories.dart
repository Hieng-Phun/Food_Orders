import 'package:flutter/material.dart';

final categories = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Category", style: TextStyle(fontSize: 20)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset("assets/categories/image.png"),
                SizedBox(height: 5),
                Text("Burger"),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/categories/image1.png"),
                SizedBox(height: 5),
                Text("Pizza"),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/categories/image2.png"),
                SizedBox(height: 5),
                Text("Hotdog"),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/categories/image3.png"),
                SizedBox(height: 5),
                Text("Drink"),
              ],
            ),
          ],
        ),
      ],
    );