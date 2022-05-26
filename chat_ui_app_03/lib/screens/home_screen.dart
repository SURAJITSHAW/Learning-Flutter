import 'package:chat_ui_app_03/widgets/category_selector.dart';
import 'package:chat_ui_app_03/widgets/favourite_contacsts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white),
        title: const Center(
            child: Text(
          'Chats',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        )),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(children: const [
                FavouriteContacts(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
