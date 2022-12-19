import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
                    Navigator.pushNamed(context, '/');
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
                  title: const Text("Création d'un compte"),
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pushNamed(context, '/signUp', arguments: "1");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
