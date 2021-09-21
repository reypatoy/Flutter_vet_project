import 'package:flutter/material.dart';

import './login.dart';

class Create_account extends StatefulWidget {
  @override
  State<Create_account> createState() => _Create_accountState();
}

class _Create_accountState extends State<Create_account> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BEASTFRIEND VETERINARY CLINIC',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        body: Container(
          child: new SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 26,
                  ),
                ),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Firstname',
                        labelText: 'Firstname',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Lastname',
                        labelText: 'Lastname',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Contact number',
                        labelText: 'Contact number',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Address Barangay',
                        labelText: 'Address Barangay',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Address Municipality',
                        labelText: 'Address Municipality',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Username',
                        labelText: 'Username',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                        contentPadding: const EdgeInsets.all(20.0))),
                new Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        child: new Text('Login here'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Login()));
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
