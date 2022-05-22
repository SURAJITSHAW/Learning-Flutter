import 'package:flutter/material.dart';

class QouteCard extends StatelessWidget {
  const QouteCard({
    Key? key,
    required this.qoute, required this.delete,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final qoute;
  // ignore: prefer_typing_uninitialized_variables
  final delete;

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
          ),
          const SizedBox(height: 8.0,),
          TextButton.icon(onPressed: delete, icon: const Icon(Icons.delete), label: const Text('delete qoute')),
        ],),
      ),
    );
  }
}