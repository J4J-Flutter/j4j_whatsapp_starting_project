enum MessageStatus { read, arrived, yetArrived }

class ChatMessage {
  String message, sender;
  DateTime time;

  MessageStatus messageStatus;
  ChatMessage({
    required this.sender,
    required this.message,
    required this.messageStatus,
    required this.time,
  });
}
