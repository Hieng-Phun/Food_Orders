import 'package:flutter/material.dart';

final appBar = AppBar(
  backgroundColor: Colors.white,
  scrolledUnderElevation: 0,
  title: Row(
    children: [
      CircleAvatar(backgroundColor: const Color.fromARGB(255, 190, 190, 190)),
      SizedBox(width: 12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to \"Good Food\"",
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 97, 97, 97),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Hi, User Name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.notifications_outlined, size: 35),
    ),
  ],
);
