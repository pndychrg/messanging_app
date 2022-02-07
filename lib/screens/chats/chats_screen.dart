import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messanging_app/constants.dart';
import 'package:messanging_app/screens/chats/components/body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      drawer: _DrawerMethod(context),
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
          // CircleAvatar(
          //   backgroundImage: AssetImage("assets/images/user_3.png"),
          // ),
        ],
      ),
    );
  }

  Drawer _DrawerMethod(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/user_3.png"),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Ralph Edwards",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: kSecondaryColor),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.group),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'New Group',
                    // style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(FontAwesomeIcons.broadcastTower),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'New BroadCast',
                  // style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.devices_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Linked Devices',
                  // style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.star,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Starred Messages',
                  // style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.payment),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Payments',
                  // style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  // style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
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
