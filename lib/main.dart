import 'package:flutter/material.dart';
import 'package:tripapp/tekit.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {'teket': (context) => Ticket()},
    );
  }
}
