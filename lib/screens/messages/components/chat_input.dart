import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding, 
        vertical: kDefaultPadding/2),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [ BoxShadow(
                    offset: Offset(0,4),
                    blurRadius: 15,
                    color: Color(0xFF087949).withOpacity(0.5)
                  )]
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: kPrimaryColor,),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal:kDefaultPadding * 0.75,
                  
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                  
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined, 
                      color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.6)),
                    SizedBox(width: kDefaultPadding/4,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message...",
                          border: InputBorder.none
                        ),
                      )),
                      Icon(
                        Icons.attach_file, 
                        color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.6)),
                      SizedBox(width: kDefaultPadding*0.5),
                      Icon(
                        Icons.camera_alt_outlined, 
                        color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.6)),
                  ]),
              )
            ),
          ],
        ),)
    );
  }
}
