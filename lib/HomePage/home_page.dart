import 'package:flutter/material.dart';
import 'package:food_orders/HomePage/Widgets/app_bar.dart';
import 'package:food_orders/HomePage/Widgets/categories.dart';
import 'package:food_orders/HomePage/Widgets/discounts.dart';
import 'package:food_orders/HomePage/Widgets/foods.dart';
import 'package:food_orders/HomePage/Widgets/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            search,
            discounts,
            SizedBox(height: 20),
            categories,
            SizedBox(height: 20),
            Foods(),
          ],
        ),
      ),
    );
  }
}
