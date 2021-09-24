import 'package:scoped_model/scoped_model.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:vet_project/dbconnection.dart';
import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

import '../DBConnection.dart' as db;
import 'user.dart';

class UserModel extends Model {
  List<User> _user = []; //list that stores User objects

  List<User> get list {
    //returns a copy of list
    return [..._user];
  }

  void addUser(User user) {
    //adds a User object to list
    _user.add(user);
  }

  void removeUser(User user) {
    _user.remove(user); //removes a Note object from list
    notifyListeners();
  }
}
