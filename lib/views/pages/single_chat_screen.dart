import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_message.dart';
import 'package:j4j_whatsapp_starting_project/views/components/message_tile.dart';

import '../../dummy.dart';

class SingleChatScreen extends StatelessWidget {
  const SingleChatScreen({super.key, required this.chat});
  final ChatData chat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 24,
        title: ListTile(
          // tileColor: Colors.red,
          title: Text(
            chat.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          // TODO: update via the state / group partipants names
          subtitle: const Text(
            "Online",
            style: TextStyle(color: Colors.white),
          ),
          leading: CircleAvatar(
            child: Text(
              chat.name[0],
            ),
          ),
        ),
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.videocam),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Column(
        children: [
          ChatMessagesListView(),
          ChatInput(),
        ],
      ),
    );
  }
}

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

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Row(),
    );
  }
}
