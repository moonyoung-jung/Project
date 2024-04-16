import 'package:flutter/material.dart';
import 'package:project/screen/nothing.dart';
import 'package:project/screen/add.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatefulWidget {
  const _HomeScreen({super.key});

  @override
  State<_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("menu button");
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
        child: Column(
          children: [
            Column(
              children: [
                Text("추가된 여행이 없습니다.", style: TextStyle(color: Color(0xff808080)
                )),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AddScreen())
          );
        },
        child: const Icon(Icons.edit),
        backgroundColor: Colors.amber[100],

      ),
    );
  }
}