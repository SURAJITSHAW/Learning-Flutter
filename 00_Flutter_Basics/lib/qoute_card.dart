import 'package:flutter/material.dart';

class QouteCard extends StatelessWidget {
  const QouteCard({
    Key? key,
    required this.qoute,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final qoute;

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            qoute.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 6.0,),
          Text(
            qoute.author,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[800],
            ),
          )
        ],),
      ),
    );
  }
}