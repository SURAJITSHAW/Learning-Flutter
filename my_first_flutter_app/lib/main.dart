import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Surajit\'s App',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: const EdgeInsets.all(100.0),
        color: Colors.grey[400],
        child: const Text('hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
