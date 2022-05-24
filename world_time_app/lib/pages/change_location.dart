
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // In appBar it automatically puts a back-arrow(<--) in it, if we come from a different screen
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text('Choose a Location'),
        // Using `elevation` to cancel the drop shadow, and make the appBar 'flat' on the screen
        elevation: 0.0,
      ),
      
    );
  }
}
