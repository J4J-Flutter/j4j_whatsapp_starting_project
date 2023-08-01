import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c1 = PrivateChatDetails(
      message: "saldkljasnl",
      lastSeen: DateTime.now(),
      name: 'sdallkasnl',
      unreadCount: 5,
    );

    return ChatTile(chat: c1);
  }
}

final timeFormat = DateFormat("HH:mm");

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.chat});
  final ChatData chat;

  @override
  Widget build(BuildContext context) {
    final String name = chat is PrivateChatDetails
        ? (chat as PrivateChatDetails).name
        : (chat as GroupChatDetails).groupName;
    return ListTile(
      title: Text(name),
      subtitle: Text(chat.message),
      leading: CircleAvatar(
        child: chat.photoURL == null
            ? Text(name[0])
            : Image.network(chat.photoURL!),
      ),
      trailing: Column(
        children: [
          Text(timeFormat.format(chat.lastSeen)),
          if (chat.unreadCount > 0)
            CircleAvatar(
              radius: 14,
              backgroundColor: Colors.green[800],
              child: Text(
                chat.unreadCount.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
