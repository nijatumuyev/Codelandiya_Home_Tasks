Map<int, String> genres = {
  1: "Qorxulu",
  2: "Detektiv",
  3: "Romantika",
  4: "Bioqrafiya",
  5: "Fantastika",
};

class Book {
  late String title;
  late String author;
  late int year;
  late String genre;
  late double price;

  Book(
      {required this.title,
      required this.author,
      required this.year,
      required this.genre,
      required this.price});
}
