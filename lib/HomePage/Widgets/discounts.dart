import 'package:flutter/material.dart';

final discounts = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Food Discounts", style: TextStyle(fontSize: 20)),
        SizedBox(height: 10),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.asset("assets/banner.png"),
          ),
        ),
      ],
    );