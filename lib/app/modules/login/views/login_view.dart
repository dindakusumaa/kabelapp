import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Image.asset(
              "assets/logokabelfix.png",
            ),
            Text(
              "Login to your account"
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, 
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900],
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(color: Colors.indigo[900]
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {
                        print("Halaman Register");
                      },
                      text: "Register",
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}