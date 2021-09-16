import 'package:flutter/material.dart';

import './home.dart';
import './drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
