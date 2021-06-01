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
      theme: ThemeData(backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
