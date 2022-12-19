import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogoutButton extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(30),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        child: Text(
          "Déconnexion".toUpperCase(),
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          auth.signOut();
        },
      ),
    );
  }
}
