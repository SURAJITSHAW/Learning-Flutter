import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: QouteList(),// This prop value will determine what are we gonna show on our 'home page'
  ));
}

class QouteList extends StatefulWidget {
  const QouteList({Key? key}) : super(key: key);

  @override
  State<QouteList> createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {

  List<String> qoutes = [
    "Be yourself; everone else is already taken",
    "The truth is rarely pure and never simple",
    "I have nothing to declare except my genius"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
       /* -----------------------------------AppBar()------------------------------ */
      appBar: AppBar(
        title: const Text('Awesome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
       /* -----------------------------------body: Column()------------------------------ */
      body: Column(
        children: qoutes.map((qoute) => Text(qoute)).toList(),
      ),
    );
  }
}































// class NinjaCard extends StatefulWidget {
//   const NinjaCard({Key? key}) : super(key: key);

//   @override
//   State<NinjaCard> createState() => _NinjaCardState();
// }

// class _NinjaCardState extends State<NinjaCard> {

//   int gfCounts = 0;

//   @override
//   Widget build(BuildContext context) {
//     // This 'Scaffold' Widget allow us to quickly build Layout. Contains props like appBar, body, floatingActionButton and more.
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: const Text('Otaku ID Card'),
//         // Centering the title
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         // For removing the drop shadow on the appBar and giving it a flat look
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         setState(() {
//           gfCounts += 1;
//         });
//       },
//       child: const Icon(Icons.add),
//       backgroundColor: Colors.grey[800],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             /* ----------------------------------------CircleAvatar------------------------- */
//             const Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/shaw.jpg'),
//                 // radius is diameter of the circle
//                 radius: 40.0,
//               ),
//             ),
//             /* -------------------------------------Divider---------------------------- */
//             Divider(
//               // this 'height' isn't whole height of the divider line, but including space all around it
//               height: 60.0,
//               color: Colors.grey[800],
//             ),
//             /* --------------------------------NAME--------------------------------- */
//             const Text(
//               'NAME',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               'Surajit Shaw',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 30.0,
//             ),
//             /* ----------------------------------AGE------------------------------- */
//             const Text(
//               'AGE',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               '19',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 30.0,
//             ),
//             /* ----------------------------------HOBBY------------------------------- */
//             const Text(
//               'HOBBY',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               'Watching Animes!',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 30.0,
//             ),
//             /* ----------------------------Row() Children------------------------------------- */
//             Row(
//               children: [
//                 Icon(
//                   Icons.email,
//                   color: Colors.grey[400],
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'shaw_surajit@yahoo.com',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: 18.0,
//                     letterSpacing: 1.0,
//                   ),
//                 ),
//               ],
//             ),
//              /* -------------------------------------Divider---------------------------- */
//              Divider(
//               height: 50.0,
//               color: Colors.grey[800],
//             ),
//             /* -----------------------------------Incremental Prop in ID Card------------------------------ */
//             const Text(
//               'GF COUNT',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               '$gfCounts',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
            
//           ],
//         ),
//       ),
//     );
//   }
// }
