import 'package:flutter/material.dart';
import 'package:myapp/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyC54aDEE2pp3RbP8PGsSJRefkOysZa1qaY",
      appId: "1:73295910748:web:9f0ca30cae95d54fa91399",
      messagingSenderId: "73295910748",
      projectId: "idx-webapp",
    )
  );

  runApp(
    MaterialApp(
      title: 'Flutter IDX App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthLogic(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
