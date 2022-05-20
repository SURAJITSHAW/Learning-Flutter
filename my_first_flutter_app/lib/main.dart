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
  );
  }
}
