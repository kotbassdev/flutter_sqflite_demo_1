import 'dart:async';
import 'dart:io';
import 'package:flutter_sqflite_demo_1/models/worker_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final String _databaseName = 'mydbworker.db';
  static final int _databaseVersion = 1;

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async {
    // if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(''' 
      CREATE TABLE $tableWorker (
        ${WorkerField.id} INTEGER PRIMARY KEY,
        ${WorkerField.workerCode} TEXT NOT NULL,
        ${WorkerField.workerName} TEXT NOT NULL,
        ${WorkerField.workerStatus} TEXT NOT NULL,
        ${WorkerField.createDate} TEXT NOT NULL,
        ${WorkerField.createBy} TEXT NOT NULL,
        ${WorkerField.updateDate} TEXT NULL,
        ${WorkerField.updateBy} TEXT NULL,
      )
    ''');
  }

  Future<bool> create(WorkerModel model) async {
    Database db = await instance.database;

    try {
      final res = await db.insert(tableWorker, model.toJson());
      print(res);
      return true;
    } catch (ex) {
      print(ex.toString());
      return false;
    }
  }
}
