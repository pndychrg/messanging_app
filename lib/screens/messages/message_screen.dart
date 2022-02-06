import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
          ],
        ),
      ),
    );
  }
}
