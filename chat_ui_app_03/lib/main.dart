import 'package:flutter/material.dart';
import 'package:chat_ui_app_03/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        // ignore: deprecated_member_use
        accentColor: const Color(0xFFFEF9EB), 
      ),
      home: HomeScreen(),
    );
  }
}
