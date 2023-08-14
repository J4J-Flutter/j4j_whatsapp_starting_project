import 'package:faker/faker.dart';
import 'package:j4j_whatsapp_starting_project/models/chat_details.dart';

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
