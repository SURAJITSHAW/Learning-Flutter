import 'package:flutter/material.dart';
import 'package:http/http.dart'; // Import http pacakage before using it.
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

    // get the data from the api endpoint, await unit we get the data and store it into a response object of type Response.
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));

    // on that response object had a body prop, which is the actual json string we get from the api call, the decode that data to Map type to store in data variable to use it.
    Map data = jsonDecode(response.body);
    

    // Get props from the data
    String dateTime = data['utc_datetime'];
    String offset = data['utc_offset'];
    String offset_hours = offset.substring(1, 3);
    String offset_minutes = offset.substring(4);

    var nowTime = data['datetime'];
    print(nowTime.runtimeType);

    print(offset.substring(1, 3));
    print(offset.substring(4));
    // print(data['datetime']); Using datetime prop we don't had to do this crap of adding offset and all that.
    
    // Create a DateTime object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset_hours)));
    now = now.add(Duration(minutes: int.parse(offset_minutes)));
    print(now);

  }

  @override
  void initState() {
    super.initState();

    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Loading...'),
      ),
    );
  }
}