import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        // backgroundColor: AppBarTheme.of(context).backgroundColor,
        toolbarHeight: 45.0,
      ),
      // backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Feed'),
              onPressed: () {
                Navigator.pushNamed(context, '/feed');
              },
            ),
            ElevatedButton(
              child: Text('Post'),
              onPressed: () {
                Navigator.pushNamed(context, '/post');
              },
            ),
          ],
        ),
      ),
    );
  }
}
