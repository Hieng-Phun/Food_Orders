import 'package:flutter/material.dart';

final search = Padding(
  padding: const EdgeInsets.symmetric(vertical: 30),
  child: TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
      hintText: '   Search your foods',
      suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      filled: true,
      fillColor: Colors.grey[200],
    ),
  ),
);
