import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:myapp/ui_components/image_square_tile.dart';
import 'package:myapp/ui_components/my_buttons.dart';
import 'package:myapp/ui_components/text_fields.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // signin method
  void signInUser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              // Welcome
              const Text(
                "Account Center",
                style: TextStyle(color: Colors.grey, fontSize: 40),
              ),
              // login
              const Text(
                "Welcome, sign in to continue",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),

              const SizedBox(height: 20),

              // username field
              MyTextField(
                controller: emailController,
                hintText: "Username or Email",
                obscureText: false,
                icon: const Icon(Icons.person),
              ),

              const SizedBox(height: 10),

              // password field
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
                icon: const Icon(Icons.lock),
              ),

              const SizedBox(
                height: 10,
              ),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // login button
              MyButton(onTap: signInUser),

              const SizedBox(height: 10),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Or continue with",
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // google + apple signin options
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google option
                  SquareImageTile(imagePath: "assets/images/google2.png"),

                  SizedBox(width: 20),

                  // apple option
                  SquareImageTile(imagePath: "assets/images/apple.png"),
                ],
              ),

              const SizedBox(height: 25),

              // not a memeber? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Doesn't have account?",
                      style: TextStyle(color: Colors.grey[700])),

                  const SizedBox(width: 4),

                  TextButton(
                    onPressed: signInUser,
                    child: const Text("Register now",
                        style: TextStyle(color: Colors.blueAccent)),
                  ),

                  // Text(
                  //   "Register now",
                  //   style: TextStyle(color: Colors.blueAccent),
                  // ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          )),
        ),
      ),
    );
  }
}
