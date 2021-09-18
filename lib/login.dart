import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
          child: Container(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              height: 400,
              child: Column(
                children: [
                  Text(
                    'LOGIN',
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
                            Navigator.pop(context);
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('login!'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
