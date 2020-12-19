import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

final imageURL = 'assets/deadman.png';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Center(child: Image.asset(imageURL)),
        floatingActionButton: FloatingActionButton(
          child: Text(
            "+",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 34.0),
          ),
          onPressed: () => print("pressed"),
          backgroundColor: Colors.lightBlue[600],
        ),
      ),
    );
  }
}
