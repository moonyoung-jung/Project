import 'package:flutter/material.dart';

class Nothing extends StatelessWidget {
  const Nothing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: '추가된 여행이 없습니다.'
            ),
          ),
        ),
      ),
    );
  }
}
