import 'package:chat/constants.dart';
import 'package:chat/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import 'chat_input.dart';
import 'message.dart';
import 'text_message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*0.75, vertical: kDefaultPadding/2 ),
              child: ListView.builder(
                  itemCount: demeChatMessages.length,
                  itemBuilder: (context, index) => Message(
                        message: demeChatMessages[index],
                      )),
            )),
        ChatInput(),
      ],
    );
  }
}

// class Message extends StatelessWidget {
//   const Message({
//     Key? key,
//     required this.message,
//   }) : super(key: key);

//   final ChatMessage message;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: kDefaultPadding),
//       child: Row(
//         mainAxisAlignment:
//             message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
//         children: [
//           if( !message.isSender ) 
//           ...[CircleAvatar(
//             radius: 14, 
//             backgroundImage: AssetImage("assets/images/user_2.png"),
//           ),
//             SizedBox(width: kDefaultPadding/2,)
//           ],
//           TextMessage(message: message)
//         ],
//       ),
//     );
//   }
// }

