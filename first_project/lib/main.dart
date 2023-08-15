import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("my first app"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          color: Colors.yellow[100],
          child: const Row(
                    children: <Widget>[
                      Text("hello"),
                      Text("world"),
                    ],
                  ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.pink[100],
          child: const Text("one"),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.purple[100],
          child: const Text("two"),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.green[100],
          child: const Text("three"),
        ),
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