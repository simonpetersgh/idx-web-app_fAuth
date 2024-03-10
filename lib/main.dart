import 'package:flutter/material.dart';
import 'package:myapp/ui_components/my_buttons.dart';
import 'package:myapp/ui_components/text_fields.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter IDX App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // signin method
  signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            // Welcome
            const Text(
              "Welcome....",
              style: TextStyle(color: Colors.grey, fontSize: 40),
            ),
            // login
            const Text(
              "Login to continue",
              style: TextStyle(color: Colors.grey, fontSize: 30),
            ),

            // username field
            MyTextField(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password field
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
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
            MyButton(onTap: signIn),

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

            // google + apple signin

            // not a memeber? register now
          ],
        )),
      ),
    );
  }
}
