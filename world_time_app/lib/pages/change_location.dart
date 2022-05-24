
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print(
        'initState() method runs'); // Now this print statement will be executed every tiime this Location Widget will be created
  }

  @override
  Widget build(BuildContext context) {
    print(
        'Build() method runs'); // During the creation also every time setState() will be called this print statement will be runs
    return Scaffold(
      // In appBar it automatically puts a back-arrow(<--) in it, if we come from a different screen
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text('Choose a Location'),
        // Using `elevation` to cancel the drop shadow, and make the appBar 'flat' on the screen
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            setState(() {
              count += 1;
            });
          }),
          child: Text(
            'Count is $count',
            style: const TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
      ),
    );
  }
}
