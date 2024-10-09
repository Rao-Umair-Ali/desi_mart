import 'package:desi_mart/Login_Screen/widget/loginbutton.dart';
import 'package:desi_mart/Login_Screen/widget/logininkwell.dart';
import 'package:desi_mart/Login_Screen/widget/logintextfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Image(image: AssetImage("assets/images/loginImage.jpg")),
            SizedBox(
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Signing",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your email and password",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                TextfieldLogin(
                  hinttext: "email",
                  icon: Icons.mail,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600),
                ),
                TextfieldLogin(
                  hinttext: "Password",
                  icon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkwellLogin(
                      colorName: Colors.black,
                      textName: "Forgot Password?",
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonLogin(text: "Log In"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ? "),
                    InkwellLogin(
                      colorName: Color(0xff53B175),
                      textName: "Signup",
                    )
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
