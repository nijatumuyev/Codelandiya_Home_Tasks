import 'message.dart';

class ImageMessage extends Message {
  String imageUrl;
  ImageMessage({
    required this.imageUrl,
    required super.sender,
    required super.recipiend,
    required super.timestamp,
  });
}
