import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper{
  // global variable
  Database? myDB;
  // null sef-ty concept
  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";

  DBHelper._();
  static DBHelper getInstance(){
    return DBHelper._();
  }
  DBHelper db = DBHelper.getInstance(); // har bar naya object ban raha hai
  // class object hai
  // static final DBHelper getInstance = DBHelper._();

  Future<Database> getDB() async{
    if(myDB != null){
      return myDB!;
    }
    else{
      myDB = await openDB();
      return myDB!;
    }
  }

  Future<Database> openDB() async{ // create + open db , path provider and path package
    // concatination / join path / directory file .db (name) / .sql (name)
    Directory appDir = await getApplicationDocumentsDirectory();
    // Directory path -> MainPath.
    String dbPath = join(appDir.path,"noteDB.db");
    return await openDatabase(dbPath,onCreate: (db, version){
      db.execute("create table $TABLE_NOTE(s_no integer primary key autoincrement, title text, desc text)");
    },
    version: 1
    );
  }
  // Future<Database> getDB() async {
  //   // if(myDB != null){
  //   //   return myDB!;
  //   // }else{
  //   //   myDB = await openDB();
  //   //   return myDB!;
  //   // }
  //   myDB ??= await openDB();
  //   return myDB!;
  // }
// return myDB ?? await openDB();
// var dbRef = myDB ?? await openDB();
Future<bool> addNote({ // void
    required String mTitle, required String mDesc
}) async{
    var db = await getDB();
    // db.insert(table,values);
  int rowsEffected = await db.insert(
    TABLE_NOTE,{
      COLUMN_NOTE_TITLE : mTitle,
      COLUMN_NOTE_DESC : mDesc
    }

  );
  return rowsEffected > 0;
}


Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDB();
    List<Map<String,dynamic>> mData = await db.query(TABLE_NOTE,columns: [COLUMN_NOTE_TITLE]);
    return mData;
}

}







// class DatabaseHelper {
//   static Database? _database;
//
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await initDB();
//     return _database!;
//   }
//
//   initDB() async {
//     String path = join(await getDatabasesPath(), 'test.db');
//
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute('''
//           CREATE TABLE users(
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             name TEXT,
//             age INTEGER
//           )
//         ''');
//       },
//     );
//   }
// }