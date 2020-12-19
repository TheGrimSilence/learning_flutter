import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

final imageURL =
    'https://images.unsplash.com/photo-1608233528867-0e0a31a5ee53?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fA%3D%3D';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Center(child: Image(image: NetworkImage(imageURL))),
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
