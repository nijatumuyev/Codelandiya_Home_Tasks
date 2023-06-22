import 'message.dart';

class ChatApp<T extends Message> {
  List<T> messages = [];
  void addMessage(T message) {
    messages.add(message);
  }

  int countOfTotalMessages() {
    return messages.length;
  }

  void infoMessage() {
    print("Sender: ${messages.first.sender}");
    print("Recipiend: ${messages.first.recipiend}");
    print("Time: ${messages.first.timestamp}");
  }
}
