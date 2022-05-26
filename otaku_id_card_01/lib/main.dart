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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Otaku ID Card'),
        // Centering the title 
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        // For removing the drop shadow on the appBar and giving it a flat look
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* ----------------------------------------CircleAvatar------------------------- */
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/shaw.jpg'),
                // radius is diameter of the circle
                radius: 40.0,
                
              ),
            ),
            /* -------------------------------------Divider---------------------------- */
            Divider(
              // this 'height' isn't whole height of the divider line, but including space all around it
              height: 60.0,
              color: Colors.grey[800],
            ),
            /* --------------------------------NAME--------------------------------- */
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              'Surajit Shaw',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            /* ----------------------------------AGE------------------------------- */
            const Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              '19',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            /* ----------------------------------HOBBY------------------------------- */
            const Text(
              'HOBBY',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              'Watching Animes!',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            /* ----------------------------Row() Children------------------------------------- */
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0,),
                 Text(
                  'shaw_surajit@yahoo.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                  ),
                  /* -----------------------------------END------------------------------ */
              ],
            )
          ],
        ),
      ),
    );
  }
}