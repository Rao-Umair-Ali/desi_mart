import 'package:desi_mart/Login_Screen/widget/loginbutton.dart';
import 'package:desi_mart/Login_Screen/widget/logininkwell.dart';
import 'package:desi_mart/Login_Screen/widget/logintextfield.dart';
import 'package:desi_mart/shop_screen/shop.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  logInButtonFunction() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress.text, password: password.text);
      Navigator.push(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => Shop()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text("Please create account from this email")),
        );
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Incorrect password")),
        );
        print('Wrong password provided for that user.');
      }
    }
  }

  // obsecurefun(bool obsecureText) {
  //   obsecureText = true;
  //   @override
  //   void setState(VoidCallback fn) {
  //     // TODO: implement setState
  //     super.setState(fn);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                  "Log In",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter your email and password",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                TextfieldLogin(
                  hinttext: "email",
                  icon: Icons.mail,
                  textType: TextInputType.emailAddress,
                  controller: emailAddress,
                  obsecureText: false,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0Xff7C7C7C),
                      fontWeight: FontWeight.w600),
                ),
                TextfieldLogin(
                  hinttext: "Password",
                  icon: Icons.remove_red_eye_outlined,
                  textType: TextInputType.visiblePassword,
                  controller: password,
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkwellLogin(
                      colorName: Colors.black,
                      textName: "Forgot Password?",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonLogin(
                  text: "Log In",
                  callback: logInButtonFunction,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
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
