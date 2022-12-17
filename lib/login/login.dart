import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/login/connexionButton.dart';
import 'package:my_first_app_flutter/signUp/createAccount.dart';
import 'package:my_first_app_flutter/login/forgetButton.dart';
import 'package:my_first_app_flutter/login/inputSection.dart';
import 'package:my_first_app_flutter/login/logoIcon.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logoIcon,
                InputSection(),
                const ConnexionButton(),
                createAccount,
                forgetButton,
              ],
            ),
          ),
        ));
  }

  void loginToFirebase() {
    final emailField = TextEditingController();
    final passwordField = TextEditingController();
    print(emailField.text.trim());
    print(passwordField.text.trim());
    try {
      auth
          .signInWithEmailAndPassword(
              email: emailField.text.trim(),
              password: passwordField.text.trim())
          .then((value) {
        print(value.toString());
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
