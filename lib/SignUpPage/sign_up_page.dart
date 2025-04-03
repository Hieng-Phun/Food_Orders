import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final keyForm = GlobalKey<FormState>();

  void submit(context) {
    if (keyForm.currentState != null && keyForm.currentState!.validate()) {
      print("Login is successfully.");
    } else {
      print("Login is failed.");
    }
  }

  final emailTxt = TextEditingController();
  final passwordTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstName = Column(
      children: [
        Row(
          children: [
            Icon(Icons.people_alt),
            Text(
              "First Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: emailTxt,
          validator: (value) {
            if (value != null && value.isEmpty) {
              return "First Name is empty.";
            }
            return null;
          },
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            hintText: "Inter your first name...",

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ],
    );
    final lastName = Column(
      children: [
        Row(
          children: [
            Icon(Icons.people_alt),
            Text(
              "Last Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: emailTxt,
          validator: (value) {
            if (value != null && value.isEmpty) {
              return "Last Name is empty.";
            }
            return null;
          },
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            hintText: "Inter your last name...",

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ],
    );
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
              return "Email is empty.";
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
          'Sign Up',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),
              Text(
                "Sign Up your Account.",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 365,
                //Form Input Login
                child: Form(
                  key: keyForm,
                  child: Column(
                    children: [
                      firstName,
                      SizedBox(height: 10),
                      lastName,
                      SizedBox(height: 10),
                      email,
                      SizedBox(height: 10),
                      password,
                      SizedBox(height: 50),
                      button,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
