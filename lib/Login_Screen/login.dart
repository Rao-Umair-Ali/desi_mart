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

  Future<void> logInButtonFunction() async {
    print(
        "Attempting to log in with email: ${emailAddress.text} and password: ${password.text}");

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress.text.trim(),
        password: password.text.trim(),
      );

      // Successful login message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            height: 70,
            child: const Center(
              child: Text(
                "Successfully Logged In",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          backgroundColor: Colors.green,
          elevation: 10,
          showCloseIcon: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );

      // Navigate to Shop page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Shop()),
      );
    } on FirebaseAuthException catch (e) {
      String message;

      // Check specific error codes
      if (e.code == 'user-not-found') {
        message = "No user found for that email.";
        print(message);
      } else if (e.code == 'wrong-password') {
        message = "Wrong password provided for that user.";
        print(message);
      } else {
        message =
            "An unknown error occurred: ${e.message}"; // Include the error message
        print(message);
      }

      // Show error message in SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            height: 100,
            child: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          showCloseIcon: true,
          backgroundColor: Colors.red,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
    } catch (e) {
      print("Error: $e"); // Print any other errors
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("An error occurred. Please try again.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // Allows scrolling if content overflows
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Image(image: AssetImage("assets/images/loginImage.jpg")),
                const SizedBox(height: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Log In",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Enter your email and password",
                      style: TextStyle(
                        color: Color(0Xff7C7C7C),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0Xff7C7C7C),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    TextfieldLogin(
                      hinttext: "email",
                      icon: Icons.mail,
                      textType: TextInputType.emailAddress,
                      controller: emailAddress,
                      obsecureText: false,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0Xff7C7C7C),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextfieldLogin(
                      hinttext: "Password",
                      icon: Icons.remove_red_eye_outlined,
                      textType: TextInputType.visiblePassword,
                      controller: password,
                      obsecureText: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkwellLogin(
                          colorName: Colors.black,
                          textName: "Forgot Password?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ButtonLogin(
                      text: "Log In",
                      callback: logInButtonFunction,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ? "),
                        InkwellLogin(
                          colorName: Color(0xff53B175),
                          textName: "Signup",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
