import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/dummy.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_message.dart';
import 'package:j4j_whatsapp_starting_project/views/components/single_page/message_tile.dart';

class ChatMessagesListView extends StatelessWidget {
  const ChatMessagesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatMessage> messages = dummyChatMessages;
    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final msg = messages[index];
          return MessageTile(msg: msg);
        },
      ),
    );
  }
}
