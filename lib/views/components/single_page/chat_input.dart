import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final _formKey = GlobalKey<FormState>();
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 6),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color.fromARGB(255, 154, 181, 181),
                ),
                child: Row(
                  children: [
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(Icons.emoji_emotions),
                    // ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Type a message",
                        ),
                        onChanged: (String value) {
                          if (value.isNotEmpty) {
                            if (!isTyping) {
                              setState(() {
                                isTyping = true;
                              });
                            }
                          } else {
                            setState(() {
                              isTyping = false;
                            });
                          }
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.attach_file),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt),
                    ),
                  ],
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.green[200],
              radius: 24,
              child:
                  // isTyping ?
                  IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              // : IconButton(
              //     onPressed: () {},
              //     icon: const Icon(Icons.mic),
              //   ),
            ),
          ],
        ),
      ),
    );
  }
}
