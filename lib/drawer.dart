import 'package:flutter/material.dart';

Widget drawer = Drawer(
  backgroundColor: Colors.black87,
  child: ListView(
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(color: Colors.black87),
        child: Text('Drawer Header'),
      ),
      ListTile(
        title: const Text("Page d'accueil"),
        textColor: Colors.white,
        onTap: () {
          /*Navigator.pushNamed(context, '/');*/
        },
      ),
      ListTile(
        title: const Text('Connexion'),
        textColor: Colors.white,
        onTap: () {
          /*Navigator.pushNamed(context, '/login', arguments: "1");*/
        },
      ),
      ListTile(
        title: const Text("Création d'un compte"),
        textColor: Colors.white,
        onTap: () {
          /*Navigator.pushNamed(context, '/signUp', arguments: "1");*/
        },
      ),
    ],
  ),
);
