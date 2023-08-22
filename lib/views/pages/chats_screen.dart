import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/dummy.dart';
import 'package:j4j_whatsapp_starting_project/views/components/chats_screen/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatScreenChats = chats;
    return ListView.builder(
      itemCount: chatScreenChats.length,
      itemBuilder: (context, index) {
        final currentChat = chatScreenChats[index];
        return ChatTile(chat: currentChat);
      },
    );
  }
}
