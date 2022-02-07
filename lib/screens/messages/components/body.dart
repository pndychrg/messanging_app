import 'package:flutter/material.dart';
import 'package:messanging_app/constants.dart';
import 'package:messanging_app/models/ChatMessage.dart';
import 'package:messanging_app/screens/messages/components/chat_input.dart';
import 'package:messanging_app/screens/messages/components/message.dart';
import 'package:messanging_app/screens/messages/components/text_message.dart';

class Body_Message extends StatelessWidget {
  const Body_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                    message: demeChatMessages[index],
                  )),
        )),
        Chat_Input(),
      ],
    );
  }
}
