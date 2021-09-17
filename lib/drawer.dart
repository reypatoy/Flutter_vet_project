import 'package:flutter/material.dart';

import './home.dart';
import './services.dart';

class SideDrawer extends StatelessWidget {
  List user;
  SideDrawer(this.user);
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width * 0.50, //20.0,
      child: Drawer(
          child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Test123'),
            accountEmail: Text('test@123.com'),
            currentAccountPicture: Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89c3e38-b6f3-48a0-9f9e-df9a0129fb93/daghh5x-4a77b3ec-fd4f-4d17-9f84-5963a8cb5c03.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4OWMzZTM4LWI2ZjMtNDhhMC05ZjllLWRmOWEwMTI5ZmI5M1wvZGFnaGg1eC00YTc3YjNlYy1mZDRmLTRkMTctOWY4NC01OTYzYThjYjVjMDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dWTFMrwnbAbj5TtUp9U_vQsohW7MnkRPymzR5wZQoV8'),
          ),
          new ListTile(
            title: new Text('HOME'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Home()));
            },
          ),
          new ListTile(
            title: new Text('SERVICES'),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Services(user)));
            },
          ),
          new ListTile(
            title: new Text('APPOINTMENTS'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Home()));
            },
          ),
          new ListTile(
            title: new Text('ACCOUNT'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Home()));
            },
          ),
        ],
      )),
    );
  }
}
