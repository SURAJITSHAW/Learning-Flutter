import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(), // This prop value will determine what are we gonna show on our 'home page'
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This 'Scaffold' Widget allow us to quickly build Layout. Contains props like appBar, body, floatingActionButton and more.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
      ),
    );
  }
}