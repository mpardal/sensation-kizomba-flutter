import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ConnexionButton extends StatelessWidget {
  ConnexionButton({super.key});

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(110, 15, 110, 15),
        backgroundColor: Color.fromARGB(255, 162, 135, 54),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "Connexion".toUpperCase(),
        style: TextStyle(
          color: Color.fromARGB(255, 221, 218, 218),
          fontSize: 20.0,
        ),
      ),
      onPressed: () {
        loginToFirebase();
      },
    );
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
