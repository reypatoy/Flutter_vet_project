import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
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
                  'Appointment',
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
                        hintText: 'Schedule',
                        labelText: 'Schedule',
                        contentPadding: const EdgeInsets.all(20.0))),
                TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                        hintText: 'Description',
                        labelText: 'Description',
                        contentPadding: const EdgeInsets.all(20.0))),
                new Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Send Request'),
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
