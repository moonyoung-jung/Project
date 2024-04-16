import 'package:flutter/material.dart';

class Trip {
  String title;
  String date;

  Trip({required this.title, required this.date});
}

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const _AddScreen(),
    );
  }
}

class _AddScreen extends StatefulWidget {
  const _AddScreen({super.key});

  @override
  State<_AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<_AddScreen> {
  List<Trip> trips = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.amber[100],
        title: Text("Trip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Text('dddddd'),
      ),
    );
  }
}
