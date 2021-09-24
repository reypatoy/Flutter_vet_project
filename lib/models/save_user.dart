import 'dart:math';

import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

db(first_name, last_name, email, username, password) async {
  print(first_name);
  final db = await Db.create(
      'mongodb://rey:philippines@vetproject-shard-00-00.jpejz.mongodb.net:27017,vetproject-shard-00-01.jpejz.mongodb.net:27017,vetproject-shard-00-02.jpejz.mongodb.net:27017/BEASTFRIEND?ssl=true&replicaSet=atlas-2qaj3x-shard-0&authSource=admin&retryWrites=true&w=majority');
  db.open();

  final user = db.collection('user');
  user.insertOne({
    'id': 100,
    'password': password,
    'username': username,
    'last_name': last_name,
    'first_name': first_name,
    'email': email
  });
  await db.close();
}
