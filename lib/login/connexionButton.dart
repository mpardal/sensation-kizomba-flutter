import 'package:flutter/material.dart';

class ConnexionButton extends StatelessWidget {
  const ConnexionButton({super.key});

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
        Navigator.pushNamed(context, '/');
      },
    );
  }
}
