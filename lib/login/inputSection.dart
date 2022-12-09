import 'package:flutter/material.dart';

final emailField = TextEditingController();
final passwordField = TextEditingController();

Widget inputSection = Container(
  margin: const EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30, width: 1),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 162, 135, 54),
              ),
              child: Icon(
                Icons.people_alt_outlined,
                size: 30,
                color: Color.fromARGB(255, 221, 218, 218),
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  controller: emailField,
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Identifiant',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30, width: 1),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 162, 135, 54),
              ),
              child: Icon(
                Icons.lock_outline,
                size: 30,
                color: Color.fromARGB(255, 221, 218, 218),
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  controller: passwordField,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  ),
);
