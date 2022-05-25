import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading...';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(flag: 'germany.png', location: 'Berlin', url: 'Europe/Berlin');
    await instance.getTime();

    setState(() {
      time = instance.time;
    });
  }


  @override
  void initState() {
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Loading Screen'),
      ),
      body: Center(
        child: Text(time),
      ),
    );
  }
}