import 'package:flutter/material.dart';
import 'package:food_orders/CartPage/cart_page.dart';

import 'package:food_orders/HomePage/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screen = [HomePage(), CartPage()];
  @override
  Widget build(BuildContext context) {
    final itemBars = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        label: "Cart",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.inbox_outlined),
        label: "Inboxs",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.wallet_outlined),
        label: "Wallet",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: "Profile",
      ),
    ];

    final navBar = BottomNavigationBar(
      items: itemBars,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      iconSize: 30,
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color.fromARGB(255, 9, 33, 63),
    );

    return Scaffold(
      body: Center(child: screen.elementAt(currentIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: navBar,
      ),
    );
  }
}
