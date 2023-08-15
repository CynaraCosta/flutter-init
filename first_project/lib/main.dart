import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("my first app"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text("hello wordl!"),
        TextButton(
          onPressed: (){}, 
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red[100]),
          ),
          child: const Text("clicke me")
          ),
          Container(
            color: Colors.cyan,
            padding: const EdgeInsets.all(30.0),
            child: const Text('inside container'),
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