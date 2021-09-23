import 'package:mongo_dart/mongo_dart.dart';

import './customer.dart';

/// Represents a tourism location a user can visit.
class User {
  final String first_name;
  final String last_name;
  final String email;
  final String username;
  final String password;
  final int user_type = 3;
  static const String tableName = 'user';

  User(this.first_name, this.last_name, this.email, this.username,
      this.password);

  // NOTE: implementing functionality here in the next step!
  static connect() async {
    Db db = await Db.create(
        'mongodb://rey:philippines@vetproject-shard-00-00.jpejz.mongodb.net:27017,vetproject-shard-00-01.jpejz.mongodb.net:27017,vetproject-shard-00-02.jpejz.mongodb.net:27017/BEASTFRIEND?ssl=true&replicaSet=atlas-2qaj3x-shard-0&authSource=admin&retryWrites=true&w=majority');
    await db.open();
  }
}
