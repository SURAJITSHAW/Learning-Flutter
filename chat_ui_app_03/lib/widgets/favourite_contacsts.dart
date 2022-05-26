import 'package:flutter/material.dart';
import 'package:chat_ui_app_03/models/message_model.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Favourite Contacts',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                ),
                iconSize: 30.0,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blueAccent,
          child: ListView.builder(
            itemCount: favourites.length,
            itemBuilder: (BuildContext context, int index) {
              return ;
            },
          ),
        )
      ],
    );
  }
}
