import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(flag: 'germany.png', location: 'Berlin', url: 'Europe/Berlin');
    await instance.getTime();

    // ignore: use_build_context_synchronously
    // Navigator.pushReplacementNamed(context, '/home', arguments: {
    //   'location': instance.location,
    //   'time': instance.time,
    //   'flag': instance.flag
    // });

  }


  @override
  void initState() {
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: SpinKitSquareCircle(
  color: Colors.white,
  size: 90.0,
),
      ),
    );
  }
}