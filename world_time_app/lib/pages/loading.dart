import 'package:flutter/material.dart';
import 'package:http/http.dart'; // Import http pacakage before using it.
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    // get the data from the api endpoint, await unit we get the data and store it into a response object of type Response.
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    // on that response object had a body prop, which is the actual json string we get from the api call, the decode that data to Map type to store in data variable to use it.
    Map data = jsonDecode(response.body);
    
  }

  @override
  void initState() {
    super.initState();

    getData();
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