import 'package:flutter/material.dart';

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
              },
              child: Text("Create"),
            ),
            ElevatedButton(
              onPressed: () {
                print('Read');
              },
              child: Text("Read"),
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
