import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messanging_app/constants.dart';
import 'package:messanging_app/signinOrsignUp/singin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //spacing widget
            Spacer(
              flex: 2,
            ),
            //Welcome Image
            Image.asset("assets/images/messaging.png"),
            Spacer(
              flex: 3,
            ),
            //Welcome Text
            Text("Welcome to UI of \n A messanging app",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Spacer(
              flex: 2,
            ),

            //Secondary Welcome Text
            Text(
              "Let's see\nsome more screens",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color
                      ?.withOpacity(0.64)),
            ),
            Spacer(
              flex: 2,
            ),

            //Skip Button

            FittedBox(
              child: TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigninOrSignup())),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color!
                              .withOpacity(0.8)),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color!
                          .withOpacity(0.8),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
