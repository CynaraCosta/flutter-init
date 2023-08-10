import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("my first app"),
      centerTitle: true,
    ),
    body: const Center(
      child: Text("hello cynara!"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: const Text("click"),
    ),
  ),
));