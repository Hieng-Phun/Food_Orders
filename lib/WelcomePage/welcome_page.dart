import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Button Get Start
    final button = Container(
      height: 51,
      width: 231,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          colors: [Color(0xFF000C34), Color(0xFF3F00FF)],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          'Get Start',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Image.asset("assets/logo.png"),
            SizedBox(height: 100),
            button,
          ],
        ),
      ),
    );
  }
}
