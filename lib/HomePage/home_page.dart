import 'package:flutter/material.dart';
import 'package:food_orders/HomePage/Widgets/app_bar.dart';
import 'package:food_orders/HomePage/Widgets/categories.dart';
import 'package:food_orders/HomePage/Widgets/discounts.dart';
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
            Text("Food Discounts", style: TextStyle(fontSize: 20)),
            discounts,
            SizedBox(height: 20),
            Text("Category", style: TextStyle(fontSize: 20)),
            categories,
            SizedBox(height: 20),
            // Foods
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Foods", style: TextStyle(fontSize: 20)),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/foods");
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 77, 77, 77),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Cart
                        SizedBox(
                          width: 185,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/Items/image.png"),
                                  Text(
                                    "Name Food",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "20 min",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Text("1.0"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    "\$ 5.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/Items/image.png"),
                                  Text(
                                    "Name Food",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "20 min",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Text("1.0"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    "\$ 5.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
