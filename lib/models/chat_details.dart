abstract class ChatData {
  String message;
  String name;
  DateTime lastSeen;
  String? photoURL;
  int unreadCount;
  ChatData({
    required this.name,
    required this.message,
    required this.lastSeen,
    this.unreadCount = 0,
    this.photoURL,
  });
}

class PrivateChatDetails extends ChatData {
  PrivateChatDetails({
    required super.name,
    required super.message,
    required super.lastSeen,
    super.photoURL,
    super.unreadCount,
  });
}

// final c1 = ChatDetails(
//   message: "saldkljasnl",
//   lastSeen: DateTime.now(),
//   name: 'sdallkasnl',
//   unreadCount: 5,
// );

// void stam() {
//   if (c1.photoURL?.contains("123") ?? false) {}
// }

class GroupChatDetails extends ChatData {
  String lastMessageSender;

  GroupChatDetails({
    required super.name,
    required this.lastMessageSender,
    required super.message,
    required super.lastSeen,
    super.photoURL,
    super.unreadCount,
  });
}
