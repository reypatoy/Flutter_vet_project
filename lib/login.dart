import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './create_account.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BEASTFRIEND VETERINARY CLINIC',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          width: 350,
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 26,
                  ),
                ),
                Text(
                  data,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 26,
                  ),
                ),
                const TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        hintText: 'Username',
                        labelText: 'Username',
                        contentPadding: EdgeInsets.all(20.0))),
                const TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        contentPadding: EdgeInsets.all(20.0))),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: const Text('Create Account'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Create_account()));
                        },
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final response = await http.get(Uri.parse(
                              'http://127.0.0.1:8000/flutter_login/'));
                          final decode = json.decode(response.body)
                              as Map<String, dynamic>;
                          setState(() {
                            data = decode['hello'];
                          });
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
