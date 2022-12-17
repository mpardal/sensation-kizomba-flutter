import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.amber.shade300,
            Colors.amber.shade700,
            Colors.orange.shade900,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            textSection,
            InputSection(),
          ],
        ),
      ),
    );
  }
}

Widget textSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Text(
    'Créez-vous un compte',
  ),
);

class InputSection extends StatelessWidget {
  InputSection({Key? key}) : super(key: key);
  final emailField = TextEditingController();
  final passwordField = TextEditingController();
  final pseudoField = TextEditingController();
  final birthdateField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.people_outline,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 230,
                  child: Center(
                    child: TextField(
                      controller: pseudoField,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Pseudo',
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
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.mail_outline,
                    size: 30,
                    color: Colors.red,
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
                        hintText: 'Adresse email',
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
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.lock_outline,
                    size: 30,
                    color: Colors.red,
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
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.date_range,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 230,
                  child: Center(
                    child: TextField(
                      controller: birthdateField,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Date de naissance',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              child: Text(
                "Inscription".toUpperCase(),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                signUpToFirebase();
              },
            ),
          ),
        ],
      ),
    );
  }

  void signUpToFirebase() {
    print(emailField.text.trim());
    print(passwordField.text.trim());
    print(pseudoField.text.trim());
    print(birthdateField.text.trim());
    try {
      auth
          .createUserWithEmailAndPassword(
        email: emailField.text.trim(),
        password: passwordField.text.trim(),
      )
          .then((value) {
        print(value.user!.uid);
        addUser(
          value.user!.uid,
          pseudoField.text.trim(),
          birthdateField.text.trim(),
        );
      });
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> addUser(String userID, String pseudo, String birthdate) {
    return firestore
        .collection('Users')
        .doc(userID)
        .set({
          'pseudo': pseudo,
          'birthdate': birthdate,
        })
        .then((value) => print("Utilisateur ajouté"))
        .catchError(
          (error) => print("Erreur: $error"),
        );
  }
}
