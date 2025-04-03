import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 190, 190, 190),
          ),
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
    final search = Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: '   Search your foods',
          suffixIcon: Icon(Icons.search),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
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
    final foods = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Foods", style: TextStyle(fontSize: 20)),
            Text(
              "See all",
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 77, 77, 77),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Icon(Icons.star, color: Colors.amber, size: 20),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Icon(Icons.star, color: Colors.amber, size: 20),
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
      ],
    );
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
            foods,
          ],
        ),
      ),
    );
  }
}
