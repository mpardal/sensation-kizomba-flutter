import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app_flutter/login/logout.dart';
import 'package:my_first_app_flutter/login/userInfos.dart';

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
      body: Column(
        children: [
          const SizedBox(height: 30),
          SizedBox(
            height: 300,
            child: UtilisateurInfos(),
          ),
          LogoutButton()
        ],
      ),
    );
  }
}
