import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/signUp/signUpButton.dart';
import 'package:my_first_app_flutter/signUp/signUpPage.dart';

Widget createAccount = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SignUpButton(),
    ],
  ),
);
