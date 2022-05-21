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
          Expanded(child: Image.asset('assets/husky.jpg'), flex: 3,),
          Expanded(          
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text('One'),
              color: Colors.cyan,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text('Two'),
              color: Colors.pink,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text('Three'),
              color: Colors.amber,
            ),
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
