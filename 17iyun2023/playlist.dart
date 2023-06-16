import 'media_file.dart';
import 'shuffleable.dart';

class Playlist extends MediaFile with Shuffleable {
  String playlistName;
  List<MediaFile> mediaFiles;
  Playlist({
    required this.mediaFiles,
    required this.playlistName,
    super.title,
    super.duration,
    super.filePath,
  });
  playPlaylist() {
    print("Playing ${mediaFiles.first.title} of $playlistName");
  }

  showPlaylist() {
    mediaFiles.forEach((element) {
      print("${element.title}");
    });
  }
}
