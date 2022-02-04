import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messanging_app/components/primary_button.dart';
import 'package:messanging_app/constants.dart';
import 'package:messanging_app/screens/chats/chats_screen.dart';
import 'package:messanging_app/screens/signinOrsignupScreen/components/background.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    //this size provides us total height and widthof our screen
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Positioned(
              top: 0,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                radius: 70,
              ),
            ),
            Text(
              "WELCOME",
              style: Theme.of(context).textTheme.headline5,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            Spacer(flex: 1),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PrimaryButton(
                  text: "Sign In",
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(),
                      )),
                  Width: 270,
                ),
                SizedBox(
                  height: 10,
                ),
                PrimaryButton(
                  text: "Sign Up",
                  press: () {},
                  color: Theme.of(context).colorScheme.secondary,
                  Width: 3700,
                ),
              ],
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
