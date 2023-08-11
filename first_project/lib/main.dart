import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("my first app"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: Image.asset('assets/mjoana.png'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      backgroundColor: Colors.yellow[100],
      child: const Text(
        "click",
        style: TextStyle(color: Colors.black),
        ),
    ),
  ),
));