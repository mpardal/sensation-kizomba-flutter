import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetUserData extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String documentId;
  final String fieldName;
  final String fieldTitle;

  GetUserData(this.documentId, this.fieldName, this.fieldTitle);
  @override
  Widget build(BuildContext context) {
    CollectionReference users = firestore.collection('Users');
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const ListTile(
              title: Text(
            'Un problème est survenu',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return ListTile(
            title: Text(
              data[fieldName],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(
              fieldTitle,
              style: const TextStyle(fontSize: 20),
            ),
          );
        }
        return const ListTile(
            title: Text(
          'En cours de chargement',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
      },
    );
  }
}
