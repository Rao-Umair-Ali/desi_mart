import 'package:desi_mart/Signup_Screen/widget/signupbutton.dart';
import 'package:desi_mart/Signup_Screen/widget/signupinkwell.dart';
import 'package:desi_mart/Signup_Screen/widget/signuptextfield.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Image(image: AssetImage("assets/images/loginImage.jpg")),
            const SizedBox(
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter your Credentials to continue",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
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
                  obsecuretext: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
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
                  obsecuretext: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
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
                  obsecuretext: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "By continuing you agree to our Tems of Service  and Privacy Policy",
                  style: TextStyle(color: Color(0Xff7C7C7C), fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ButtonSignup(text: "Sign Up"),
                const SizedBox(
                  height: 20,
                ),
                const Row(
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
