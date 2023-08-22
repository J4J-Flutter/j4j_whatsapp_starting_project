import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';
import 'package:j4j_whatsapp_starting_project/utils/last_seen_text.dart';
import 'package:j4j_whatsapp_starting_project/views/pages/single_chat_screen.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.chat});
  final ChatData chat;

  @override
  Widget build(BuildContext context) {
    final String name = chat.name;
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SingleChatScreen(chat: chat),
            ));
      },
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
