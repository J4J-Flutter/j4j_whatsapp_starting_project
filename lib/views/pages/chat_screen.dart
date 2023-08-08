import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:j4j_whatsapp_starting_project/dummy.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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

final timeFormat = DateFormat("HH:mm");
final dateFormat = DateFormat("yyyy-MM-dd");

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.chat});
  final ChatData chat;

  @override
  Widget build(BuildContext context) {
    final String name = chat is PrivateChatDetails
        ? (chat as PrivateChatDetails).name
        : (chat as GroupChatDetails).groupName;
    return ListTile(
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        chat.message,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        child: chat.photoURL == null
            ? Text(name[0])
            : Image.network(chat.photoURL!),
      ),
      trailing: SizedBox(
        width: 65,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastSeenText(chat.lastSeen)),
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
      ),
    );
  }
}

String lastSeenText(DateTime msgTime) {
  DateTime now = DateTime.now();
  final Duration diff = now.difference(msgTime);
  if (diff.inDays == 0) {
    return timeFormat.format(msgTime);
  } else if (diff.inDays == 1) {
    return "yesterday";
  } else {
    return dateFormat.format(msgTime);
  }
}
