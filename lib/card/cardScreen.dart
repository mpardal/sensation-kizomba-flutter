import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/event/evenement.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Evenement],
      ),
    );
  }
}
