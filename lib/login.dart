import 'package:flutter/material.dart';

import './create_account.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          alignment: Alignment.center,
          width: 350,
          height: 400,
          child: new SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Login',
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
                new Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        child: new Text('Create Account'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Create_account()));
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('login'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
