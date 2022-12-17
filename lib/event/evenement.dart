import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/Event/titleSection.dart';
import 'package:my_first_app_flutter/FirebaseMessage.dart';
import 'package:my_first_app_flutter/event/imageSection.dart';
import 'package:my_first_app_flutter/event/textSection.dart';

Widget Evenement = Container(
  decoration: BoxDecoration(
    color: Colors.black38,
  ),
  child: Center(
      child: Center(
    child: FirebaseMessage(),
  )),
);
