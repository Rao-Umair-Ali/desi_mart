import 'package:desi_mart/Signup_Screen/widget/signupbutton.dart';
import 'package:desi_mart/Signup_Screen/widget/signupinkwell.dart';
import 'package:desi_mart/Signup_Screen/widget/signuptextfield.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

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
                  "Sign Up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your Credentials to continue",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "UserName",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                TextfieldSignup(
                  hinttext: "UserName",
                  icon: Icons.person,
                  textType: TextInputType.name,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                TextfieldSignup(
                  hinttext: "email",
                  icon: Icons.mail,
                  textType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600),
                ),
                TextfieldSignup(
                  hinttext: "Password",
                  icon: Icons.remove_red_eye_outlined,
                  textType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "By continuing you agree to our Tems of Service  and Privacy Policy",
                  style: TextStyle(color: Color(0Xff7C7C7C), fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonSignup(text: "Sign Up"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account "),
                    InkwellSignup(
                      colorName: Color(0xff53B175),
                      textName: "Log In",
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
