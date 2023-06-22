import 'message.dart';

class TextMessage extends Message {
  String text;

  TextMessage({
    required this.text,
    required super.sender,
    required super.recipiend,
    required super.timestamp,
  });
}
