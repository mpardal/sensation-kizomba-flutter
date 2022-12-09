import 'package:flutter/material.dart';

class GoToConnexion extends StatelessWidget {
  const GoToConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      child: Text(
        'Connexion',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
