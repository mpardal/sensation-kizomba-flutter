import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/city/nantes.dart';
import 'package:my_first_app_flutter/home.dart';
import 'package:my_first_app_flutter/login/login.dart';
import 'package:my_first_app_flutter/signUp/signUpPage.dart';
import 'package:my_first_app_flutter/header.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAuth auth = FirebaseAuth.instance;
  auth.authStateChanges().listen((User? user) {
    if (user == null) {
      print('Utilisateur non connecté');
      runApp(LoginPage());
    } else {
      print('Utilisateur connecté :' + user.email!);
      runApp(HomePage());
    }
  });
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes nav',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/nantes': (context) => const NantesPage()
      },
    ),
  );
}
