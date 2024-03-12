// To authenticated whether used is login or not
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/login_page.dart';

class AuthLogic extends StatelessWidget {
  const AuthLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            // is user logged in??
            if (snapshot.hasData) {
              return const HomePage();
            }

            // is user NOT logged in??
            else {
              return LoginPage();
            }
          })),
    );
  }
}
