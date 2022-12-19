import 'package:flutter/material.dart';

final firstnameField = TextEditingController();
final lastnameField = TextEditingController();
final emailField = TextEditingController();
final passwordField = TextEditingController();

Widget inputSectionSignUp = Container(
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
                Icons.people_outline,
                size: 30,
                color: Color.fromARGB(255, 221, 218, 218),
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  controller: firstnameField,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Prénom",
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
                Icons.mail_outline,
                size: 30,
                color: Color.fromARGB(255, 221, 218, 218),
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  controller: lastnameField,
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Nom de famille',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  controller: emailField,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Adresse e-mail", border: InputBorder.none),
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
                Icons.date_range,
                size: 30,
                color: Color.fromARGB(255, 221, 218, 218),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
