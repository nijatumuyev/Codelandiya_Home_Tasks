import 'audio_message.dart';
import 'image_message.dart';
import 'message.dart';
import 'text_message.dart';

class ChatApp<T extends Message> {
  List<T> messages = [];
  void addMessage(T message) {
    messages.add(message);
  }

  int countOfTotalMessages() {
    return messages.length;
  }

  void showMessages() {
    for (Message message in messages) {
      print(" " * 10);
      print("Sender: ${messages.first.sender}");
      print("Recipiend: ${messages.first.recipiend}");
      print("Time: ${messages.first.timestamp}");
      if (message is TextMessage) {
        print("Message: ${message.text}");
      }
      if (message is ImageMessage) {
        print("Message: ${message.imageUrl}");
      }
      if (message is AudioMessage) {
        print("Message: ${message.audioUrl}");
      }
    }
  }
}
