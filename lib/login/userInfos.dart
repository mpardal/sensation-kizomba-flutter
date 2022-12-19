import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_first_app_flutter/login/getUserData.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

class UtilisateurInfos extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UtilisateurInfos> {
  final User? currentUser = auth.currentUser;
  String userEmail = 'En cours de chargement';

  @override
  initState() {
    super.initState();
    if (currentUser!.email != null) {
      userEmail = currentUser!.email!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            currentUser!.uid,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: const Text(
            'Identifiant Firebase',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          title: Text(
            userEmail,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            'Adresse email',
            style: TextStyle(fontSize: 20),
          ),
        ),
        GetUserData(currentUser!.uid, 'pseudo', 'Pseudo'),
        GetUserData(currentUser!.uid, 'bithdate', 'Date de naissance')
      ],
    );
  }
}
