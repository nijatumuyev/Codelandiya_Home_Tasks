import 'message.dart';

class AudioMessage extends Message {
  String audioUrl;
  Duration duration;
  AudioMessage({
    required this.audioUrl,
    required this.duration,
    required super.sender,
    required super.recipiend,
    required super.timestamp,
  });
}
