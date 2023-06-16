import 'media_file.dart';
import 'playlist.dart';

void main() {
  MediaFile song1 = MediaFile(
      title: "Eminem - Lose Yourself",
      duration: Duration(minutes: 5, seconds: 28),
      filePath: "https://www.youtube.com/watch?v=xFYQQPAOz7Y");
  MediaFile song2 = MediaFile(
      title: "Eminem - Mockingbird",
      duration: Duration(minutes: 4, seconds: 17),
      filePath: "https://www.youtube.com/watch?v=S9bCLPwzSC0");
  MediaFile song3 = MediaFile(
      title: "Ceza - Gelsin Hayat Bildiği Gibi",
      duration: Duration(minutes: 4, seconds: 55),
      filePath: "https://www.youtube.com/watch?v=Ocd4cbKyL7I");
  MediaFile song4 = MediaFile(
      title: "No.1 - Yarım Kalan Sigara (feat. Melek Mosso)",
      duration: Duration(minutes: 3, seconds: 07),
      filePath: "https://www.youtube.com/watch?v=lEh4_hhZBvo");
  MediaFile song5 = MediaFile(
      title: "No.1 - Hiç Işık Yok (feat. Melek Mosso)",
      duration: Duration(minutes: 6, seconds: 11),
      filePath: "https://www.youtube.com/watch?v=5PnEC4__CyM");
  MediaFile song6 = MediaFile(
      title: "Orkhan Zeynalli ft Roya - Utancaq",
      duration: Duration(minutes: 3, seconds: 20),
      filePath: "https://www.youtube.com/watch?v=2uJ4JXGoytM");
  Playlist myPlaylist = Playlist(
      playlistName: "Rap Songs",
      mediaFiles: [song1, song2, song3, song4, song5, song6]);

  print(" " * 10);
  myPlaylist.playPlaylist();
  myPlaylist.pause();
  print("-" * 10);
  myPlaylist.play(myPlaylist.mediaFiles.first.title!);
  myPlaylist.stop();
  print("-" * 10);
  myPlaylist.shufflePlaylist(myPlaylist.mediaFiles);
  myPlaylist.playPlaylist();
  print("-" * 10);
  myPlaylist.showPlaylist();
  print(" " * 10);
}
