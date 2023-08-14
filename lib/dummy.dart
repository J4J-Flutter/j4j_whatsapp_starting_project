import 'package:faker/faker.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_message.dart';

final Faker faker = Faker(seed: 42);

final List<ChatData> chats = List<ChatData>.generate(
  100,
  (index) {
    final bool isGroup = index % 5 == 0;
    if (isGroup) {
      return GroupChatDetails(
        name: faker.company.name(),
        lastMessageSender: faker.person.firstName(),
        message: faker.lorem.sentence(),
        lastSeen: faker.date.dateTimeBetween(DateTime(2023), DateTime.now()),
        unreadCount: faker.randomGenerator.integer(5),
      );
    }
    return PrivateChatDetails(
      name: faker.person.firstName(),
      message: faker.lorem.sentence(),
      unreadCount: faker.randomGenerator.integer(5),
      lastSeen: faker.date.dateTimeBetween(DateTime(2023), DateTime.now()),
    );
  },
)..sort(
    (a, b) => b.lastSeen.compareTo(a.lastSeen),
  );

final List<ChatMessage> dummyChatMessages = List.generate(100, (index) {
  final now = DateTime.now();
  DateTime msgTime =
      faker.date.dateTime(maxYear: now.year, minYear: now.year - 1);
  while (msgTime.isAfter(now)) {
    msgTime = faker.date.dateTime(maxYear: now.year, minYear: now.year - 1);
  }
  final chance = faker.randomGenerator.integer(100) / 100;
  return ChatMessage(
    messageStatus: MessageStatus.yetArrived,
    time: msgTime,
    message: faker.lorem.sentence(),
    sender: chance < 0.8 ? faker.person.name() : "me",
  );
})
  ..sort((a, b) => a.time.compareTo(b.time));
