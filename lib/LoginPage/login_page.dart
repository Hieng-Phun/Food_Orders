import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final keyForm = GlobalKey<FormState>();

  void submit(context) {
    if (keyForm.currentState != null && keyForm.currentState!.validate()) {
      print("Login is successfully.");
      Navigator.pushReplacementNamed(context, "/homePage");
    } else {
      print("Login is failed.");
    }
  }

  final emailTxt = TextEditingController();
  final passwordTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final email = Column(
      children: [
        Row(
          children: [
            Icon(Icons.email),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: emailTxt,
          validator: (value) {
            if (value != null && value.isEmpty) {
              return "Password is empty.";
            }
            return null;
          },
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            hintText: "Inter your email...",

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ],
    );

    final password = Column(
      children: [
        Row(
          children: [
            Icon(Icons.key),
            Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: passwordTxt,
          validator: (value) {
            if (value != null && value.isNotEmpty && value.length < 8) {
              return "Password should be then 8 charactors more.";
            }
            if (value != null && value.isEmpty) {
              return "Password is empty.";
            }
            return null;
          },
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            hintText: "Inter your password...",

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ],
    );

    final button = Container(
      height: 51,
      width: 365,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          colors: [Color(0xFF000C34), Color(0xFF3F00FF)],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          submit(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logo.png"),
                SizedBox(height: 15),
                Text(
                  "Login your Account.",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 45),
                SizedBox(
                  width: 365,
                  //Form Input Login
                  child: Form(
                    key: keyForm,
                    child: Column(
                      children: [
                        email,
                        SizedBox(height: 20),
                        password,
                        SizedBox(height: 60),
                        button,
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signUp');
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
