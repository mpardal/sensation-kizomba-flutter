import 'package:flutter/material.dart';

Widget logoIcon = Container(
  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
  padding: const EdgeInsets.all(30),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(70),
    color: const Color.fromRGBO(255, 255, 255, 0.1),
  ),
  height: 250,
  width: 250,
  child: Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 3)),
      ],
    ),
    child: Image.network(
        "https://drissas.com/wp-content/uploads/2021/08/photo_thailande.jpeg"),
  ),
);
