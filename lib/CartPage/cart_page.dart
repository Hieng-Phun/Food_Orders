import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold)),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset("assets/Items/image.png", width: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Fresh Pizza"), Text("\$8.00")],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
