import 'package:flutter/material.dart';
import 'package:food_orders/HomePage/home_page.dart';
import 'package:food_orders/LoginPage/login_page.dart';
import 'package:food_orders/SignUpPage/sign_up_page.dart';
import 'package:food_orders/WelcomePage/welcome_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: WelcomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/homePage': (context) => HomePage(),
      },
    ),
  );
}
