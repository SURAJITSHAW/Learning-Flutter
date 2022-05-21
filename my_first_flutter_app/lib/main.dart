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
      body: Row(
        children: [
          const Text('Hello World!'),
          ElevatedButton(onPressed: () {}, child: const Text('Click Me'), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),  
            child: const Text('inside a container'),
            color: Colors.amber,  
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
