import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/Event/titleSection.dart';
import 'package:my_first_app_flutter/FirebaseMessage.dart';
import 'package:my_first_app_flutter/event/imageSection.dart';
import 'package:my_first_app_flutter/event/textSection.dart';

Widget Evenement = Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.black12, Colors.black38, Colors.black87],
    ),
  ),
  child: Center(
      child: Center(
    child: FirebaseMessage(),
  )),
);
