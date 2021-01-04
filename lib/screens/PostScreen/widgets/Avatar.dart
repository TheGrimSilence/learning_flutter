import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
      child: Container(
          child: Row(
        children: [
          CircleAvatar(
            radius: 12.0,
            backgroundImage: NetworkImage(
                'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/82645876_212010059805827_5494189686224060416_o.jpg?_nc_cat=100&ccb=2&_nc_sid=09cbfe&_nc_ohc=bhqLimQSeH4AX-MKzfQ&_nc_ht=scontent-iad3-1.xx&oh=e8199cc524a0c6e15d8b07bce7e6c08f&oe=60173605'),
          ),
          Container(
            child: Text(
              'TheGrimSilence',
              style: TextStyle(fontSize: 16.0, color: Color(0xFFE7E7E7)),
            ),
            margin: EdgeInsets.only(left: 10.0),
          )
        ],
      )),
    );
  }
}
