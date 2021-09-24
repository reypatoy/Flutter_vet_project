import 'package:flutter/material.dart';

import './home.dart';
import './drawer.dart';
import '../models/usermodel.dart';
import 'package:scoped_model/scoped_model.dart';

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
