import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title:  const Text(
        'Surajit\'s App',
        ),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
       child: Text(
         'Hello folks!',
          style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: 'Prompt',
        ),
       )
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Text('click'),
      backgroundColor: Colors.red[600],
    ),
  ),
));
