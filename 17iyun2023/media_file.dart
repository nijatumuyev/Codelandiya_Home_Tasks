import 'playable.dart';

class MediaFile implements Playable {
  String? title;
  Duration? duration;
  String? filePath;
  MediaFile({
    this.title,
    this.duration,
    this.filePath,
  });

  @override
  pause() {
    print("Audio Paused");
  }

 @override
  play(String title) {
print("Playing $title");
  }

  @override
  stop() {
    print("Audio Stopped");
  }
}
