import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Surajits\'s App'),
      centerTitle: true,
    ),
    body: const Center(
       child: Text('Hello folks!')
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Text('click'),
    ),
  ),
));
