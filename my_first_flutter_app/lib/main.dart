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
    body: const Center(
      child: Image(image: NetworkImage('https://www.nasa.gov/sites/default/files/thumbnails/image/curiosity_selfie.jpg'),),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Text('click'),
      backgroundColor: Colors.red[600],
    ),
  );
  }
}
