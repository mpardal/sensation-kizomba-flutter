import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/card/cardScreen.dart';
import 'package:my_first_app_flutter/event/evenement.dart';
import 'package:my_first_app_flutter/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Navigator.pushNamed(context, '/', arguments: "1");
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
              title: const Text("Créer un compte"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, '/signUp', arguments: "1");
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [CardScreen()],
        ),
      ),
    );
  }
}
