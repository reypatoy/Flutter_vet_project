import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../models/user.dart';
import '../models/usermodel.dart';
import './login.dart';
import '../models/save_user.dart';

class Create_account extends StatefulWidget {
  @override
  State<Create_account> createState() => _Create_accountState();
}

class _Create_accountState extends State<Create_account> {
  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController contact_number = TextEditingController();
  TextEditingController address_barangay = TextEditingController();
  TextEditingController address_municipality = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Create Account',
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
                    decoration: const InputDecoration(
                        hintText: 'Firstname',
                        labelText: 'Firstname',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: last_name,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Lastname',
                        labelText: 'Lastname',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: contact_number,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Contact number',
                        labelText: 'Contact number',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: address_barangay,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Address Barangay',
                        labelText: 'Address Barangay',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: address_municipality,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Address Municipality',
                        labelText: 'Address Municipality',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: email,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: username,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Username',
                        labelText: 'Username',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    controller: password,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        contentPadding: const EdgeInsets.all(20.0))),
                const TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                        contentPadding: const EdgeInsets.all(20.0))),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: new Text('Login here'),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          db(first_name, last_name, email, username, password);
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
