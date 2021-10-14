import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> database() {
    return openDatabase();
  }
}
