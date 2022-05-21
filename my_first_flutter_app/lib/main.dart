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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(          
            children: const [
              Text('Row inside Column 1'),
              Text('Row inside Column 2'),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            child: const Text('Two'),
            color: Colors.lightBlue,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text('One'),
            color: Colors.lightGreen,
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            child: const Text('Three'),
            color: Colors.teal,
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
