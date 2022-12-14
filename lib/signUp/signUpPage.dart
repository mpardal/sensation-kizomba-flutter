import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/signUp/inputSection.dart';
import 'package:my_first_app_flutter/signUp/signUpButton.dart';
import 'package:my_first_app_flutter/signUp/signUpPageButton.dart';
import 'package:my_first_app_flutter/signUp/bottomSection.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sensation Kizomba'),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text("Page d'accueil"),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                title: const Text('Connexion'),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, '/login', arguments: "1");
                },
              ),
              ListTile(
                title: const Text("Création d'un compte"),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, '/signUp', arguments: "1");
                },
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.black38),
          child: Column(
            children: [inputSectionSignUp, SignUpPageButton, bottomSection],
          ),
        ));
  }
}
