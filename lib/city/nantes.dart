import 'package:flutter/material.dart';

class NantesPage extends StatelessWidget {
  const NantesPage({super.key});

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
    );
  }
}
