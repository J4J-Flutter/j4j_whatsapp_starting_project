import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_message.dart';
import 'package:j4j_whatsapp_starting_project/utils/formats.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key, required this.msg});
  final ChatMessage msg;
  @override
  Widget build(BuildContext context) {
    final bool sentByMe = msg.sender == "me";
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      alignment: sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(6),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.75,
          minWidth: MediaQuery.sizeOf(context).width * 0.4,
        ),
        color: sentByMe ? Colors.green[200] : Colors.cyan[50],
        //TODO: fix the max width issue
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO: show sender name if not sent by me
            Text(msg.message),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                timeFormat.format(msg.time),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
