import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/signUp');
      },
      child: Text(
        "S'inscrire",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
