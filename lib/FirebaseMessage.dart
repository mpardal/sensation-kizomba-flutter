import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/MessageDesign.dart';

final infos = FirebaseFirestore.instance.collection('events');

class FirebaseMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: infos.doc('1PJEH6GqarZQyqGId658').get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Il y a une erreur');
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Le document n'existe pas");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return MessageDesign(
              titleMessage: data["title"],
              address: data["address"],
              //date: data["date"],
            );
          }
          return Text("Chargement en cours");
        });
  }
}
