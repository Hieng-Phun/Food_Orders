import 'package:flutter/material.dart';

final discounts = Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(height: 10),
    SizedBox(
      width: 500,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image.asset('assets/banner.png', fit: BoxFit.cover),
      ),
    ),
  ],
);
