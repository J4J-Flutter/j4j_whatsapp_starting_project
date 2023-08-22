import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';

AppBar singleChatScreenAppBar(ChatData chat) {
  return AppBar(
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
  );
}
