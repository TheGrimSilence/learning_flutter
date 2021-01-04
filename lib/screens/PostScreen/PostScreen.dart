import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/PostScreen/widgets/Avatar.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Title'),
        // backgroundColor: AppBarTheme.of(context).backgroundColor,
        toolbarHeight: 45.0,
        // foregroundColor: Color(0xFFE7E7E7),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [Avatar()],
        )),
        padding: EdgeInsets.all(10.0),
        color: Color(0xFF0D0D0D),
      ),
    );
  }
}
