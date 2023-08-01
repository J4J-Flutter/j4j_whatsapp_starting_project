abstract class ChatData {
  String message;
  DateTime lastSeen;
  String? photoURL;
  int unreadCount;
  ChatData({
    required this.message,
    required this.lastSeen,
    this.unreadCount = 0,
    this.photoURL,
  });
}

class PrivateChatDetails extends ChatData {
  String name;

  PrivateChatDetails({
    required this.name,
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
  String groupName;
  String lastMessageSender;

  GroupChatDetails({
    required this.groupName,
    required this.lastMessageSender,
    required super.message,
    required super.lastSeen,
    super.photoURL,
    super.unreadCount,
  });
}
