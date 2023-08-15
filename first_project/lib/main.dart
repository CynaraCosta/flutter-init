import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("my first app"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Row(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset('assets/mjoana.png')
          ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: const Text('1'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: const Text('2'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.amber,
            child: const Text('3'),
          ),
        )
      ],
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


// ElevatedButton.icon(
//         onPressed: () {
//           print("button is now being clicked!");
//         },
//         icon: const Icon(Icons.mail),
//         style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink[200])),
//         label: const Text("Click me!"),
//         )