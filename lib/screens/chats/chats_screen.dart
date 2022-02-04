import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:messanging_app/constants.dart';
import 'package:messanging_app/screens/chats/components/body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: chatBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        height: 50,
        color: kPrimaryColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        index: _selectedIndex,
        items: <Widget>[
          Icon(
            Icons.messenger,
          ),
          Icon(
            Icons.people,
            // color: kPrimaryColor,
          ),
          Icon(
            Icons.call,
            // color: kPrimaryColor,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_3.png"),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      backgroundColor: kPrimaryColor,
    );
  }
}
