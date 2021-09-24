import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

class DBConnection {
  static late DBConnection _instance;

  Db? _db;

  static getInstance() {
    if (_instance == null) {
      _instance = DBConnection();
    }
    return _instance;
  }

  Future<Db> getConnection() async {
    if (_db == null) {
      try {
        _db = Db(_getConnectionString());
        await _db!.open();
      } catch (e) {
        print(e);
      }
    }
    return _db!;
  }

  _getConnectionString() {
    return 'mongodb://rey:philippines@vetproject-shard-00-00.jpejz.mongodb.net:27017,vetproject-shard-00-01.jpejz.mongodb.net:27017,vetproject-shard-00-02.jpejz.mongodb.net:27017/BEASTFRIEND?ssl=true&replicaSet=atlas-2qaj3x-shard-0&authSource=admin&retryWrites=true&w=majority';
  }

  closeConnection() {
    _db!.close();
  }
}
