import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './create_account.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController contact_number = TextEditingController();
  TextEditingController address_barangay = TextEditingController();
  TextEditingController address_municipality = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   myController.dispose();
  //   super.dispose();
  // }
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
                TextField(
                    controller: first_name,
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
                              new MaterialPageRoute(
                                  builder: (context) => new Create_account()));
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                // Retrieve the text the that user has entered by using the
                                // TextEditingController.
                                content: Text(first_name.text),
                              );
                            },
                          );
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
