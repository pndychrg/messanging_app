import 'package:flutter/material.dart';
import 'package:messanging_app/constants.dart';
import 'package:messanging_app/screens/messages/components/body.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body_Message(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: <Widget>[
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(
            width: kDefaultPadding * 0.75,
          ),
          Column(
            children: <Widget>[
              Text(
                "Kristin Waston",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.call),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.video_call),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding / 4,
        )
      ],
    );
  }
}
