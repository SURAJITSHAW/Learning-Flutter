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
      body: Center(
          child: ElevatedButton.icon(
            // ignore: avoid_print
            onPressed: () => print('You clicked me'),
            icon: const Icon(
              Icons.mail,
            ), label: const Text('mail me'),
          )
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
