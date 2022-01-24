import 'package:flutter/material.dart';
import 'package:flutter_sqflite_demo_1/database/database.dart';
import 'package:flutter_sqflite_demo_1/models/worker_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Sqflite",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dbHelper = DatabaseHelper.instance;

  Future<void> createWorker() async {
    WorkerModel model = WorkerModel(
      workerCode: "WC-0001",
      workerName: "Anthony",
      workerStatus: true,
      createDate: DateTime.now(),
      createBy: 'admin',
    );
    await dbHelper.create(model);
  }

  Future<void> readWorkerAll() async {
    final res = await dbHelper.readAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Create');
                createWorker();
              },
              child: Text("Create"),
            ),
            ElevatedButton(
              onPressed: () {
                print('Read All');
                readWorkerAll();
              },
              child: Text("Read All"),
            ),
            ElevatedButton(
              onPressed: () {
                print('Read by');
              },
              child: Text("Read by"),
            ),
            ElevatedButton(
              onPressed: () {
                print('Update');
              },
              child: Text("Update"),
            ),
            ElevatedButton(
              onPressed: () {
                print('Delete');
              },
              child: Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
