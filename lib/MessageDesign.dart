import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/event/imageSection.dart';

class MessageDesign extends StatelessWidget {
  final String titleMessage;
  final String address;
  //final String date;
  const MessageDesign({
    Key? key,
    required this.titleMessage,
    required this.address,
    //required this.date
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleMessage,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: imageSection,
          ),
          /*Text(
            date,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),*/
          SizedBox(height: 30),
          Text(
            address,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
