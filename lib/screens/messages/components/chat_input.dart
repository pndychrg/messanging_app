import 'package:flutter/material.dart';
import 'package:messanging_app/constants.dart';

class Chat_Input extends StatelessWidget {
  const Chat_Input({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 22,
              color: Color(0xFF087949).withOpacity(0.08)),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.mic,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color
                          ?.withOpacity(0.64),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 3,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type Message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color
                          ?.withOpacity(0.64),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 3,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color
                          ?.withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
