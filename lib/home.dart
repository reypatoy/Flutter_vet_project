import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Container(
            color: Colors.green,
            child: Container(
              child: Image.asset(
                'assets/home_logo.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.yellow,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );
  }
}
