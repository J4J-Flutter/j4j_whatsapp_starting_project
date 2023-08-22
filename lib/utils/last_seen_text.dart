import 'package:j4j_whatsapp_starting_project/utils/formats.dart';

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
