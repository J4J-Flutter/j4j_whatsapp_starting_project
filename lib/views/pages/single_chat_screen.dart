import 'package:flutter/material.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';
import 'package:j4j_whatsapp_starting_project/views/components/single_page/app_bar.dart';
import 'package:j4j_whatsapp_starting_project/views/components/single_page/chat_input.dart';
import 'package:j4j_whatsapp_starting_project/views/components/single_page/chat_messages_listview.dart';

class SingleChatScreen extends StatelessWidget {
  const SingleChatScreen({super.key, required this.chat});
  final ChatData chat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: singleChatScreenAppBar(chat),
      body: const Column(
        children: [
          ChatMessagesListView(),
          ChatInput(),
        ],
      ),
    );
  }
}
