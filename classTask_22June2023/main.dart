import 'model/audio_message.dart';
import 'model/chat_app.dart';
import 'model/image_message.dart';
import 'model/text_message.dart';

void main(List<String> args) {
  ChatApp myApp = ChatApp();
  myApp.addMessage(TextMessage(
      text: "Hello",
      sender: "Mikail",
      recipiend: "George",
      timestamp: "${DateTime.now()}"));
  myApp.addMessage(ImageMessage(
      imageUrl: "https://myurl.com/image.png",
      sender: "Mikail",
      recipiend: "George",
      timestamp: "${DateTime.now()}"));
  myApp.addMessage(AudioMessage(
      audioUrl: "https://myurl.com/audio.mp4",
      duration: Duration(minutes: 1, seconds: 15),
      sender: "Mikail",
      recipiend: "George",
      timestamp: "${DateTime.now()}"));
  print(" " * 10);
  print("You Have ${myApp.countOfTotalMessages()} new messages");
  myApp.showMessages();
}
