import 'package:flutter/material.dart';

import './drawer.dart';

class Services extends StatelessWidget {
  List user;
  Services(this.user);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SERVICES',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      drawer: new SideDrawer(user),
      body: Stack(
        children: <Widget>[
          FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 1,
            child: Container(
              color: Colors.green,
              child: Container(
                child: Image.asset(
                  'assets/home_logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              height: 100,
              child: Column(
                children: [
                  Text(
                    'BeastFriend Veterinary Clinic',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    'Mastering The Art Of Pet Care',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
