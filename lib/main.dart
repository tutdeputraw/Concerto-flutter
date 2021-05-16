import 'package:flutter/material.dart';
import 'package:submission/views/init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



// import 'package:flutter/material.dart';
//
// void main() async {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'stack overflow',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       routes: {},
//       home: KanbanState(),
//     );
//   }
// }
//
// class KanbanState extends StatefulWidget {
//   @override
//   KanbanStateState createState() {
//     return KanbanStateState();
//   }
// }
//
// class KanbanStateState extends State<KanbanState> {
//   @override
//   Widget build(BuildContext context) {
//     Widget tagList = Container(
//       color: Colors.green,
//       height: 100.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               ActionChip(
//                   backgroundColor: Colors.yellow,
//                   label: Text('Tag1'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                 //backgroundColor: Colors.transparent,
//                   label: Text('Tag2'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                   label: Text('Tag3'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                   label: Text('Tag4'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                   backgroundColor: Colors.yellow,
//                   label: Text('Tag1'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                 //backgroundColor: Colors.transparent,
//                   label: Text('Tag2'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                   label: Text('Tag3'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//               ActionChip(
//                   label: Text('Tag4'),
//                   onPressed: () {
//                     // update board with selection
//                   }),
//             ],
//           )
//         ],
//       ),
//     );
//
//     Widget boardView = Container(
//       color: Colors.blue,
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: 15,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             onTap: () {},
//             title: Row(
//               children: <Widget>[
//                 Expanded(child: Text("This is item name")),
//                 Text("12 Dec 18"),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//
//     //  int _value=0;
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 1.0,
//           title: Text("Test title"),
//         ),
//         body: Container(
//           color: Colors.amber,
//           child: new Column(
//             children: <Widget>[
//               tagList,
//               Expanded(
//                 child: boardView,
//               )
//             ],
//           ),
//           margin: EdgeInsets.all(10.0),
//         ));
//   }
// }