import 'book.dart';
import 'dart:io';
import 'main.dart';

class Library {
  List<Book> books = [
    Book(
        title: "Cehennemden Gelen Sesler",
        author: "Elxan Elatli",
        year: 2013,
        genre: genres[1]!,
        price: 8.50),
    Book(
        title: "Gunesh Altinda Sher",
        author: "Agatha Chiristie",
        year: 1955,
        genre: genres[2]!,
        price: 11),
    Book(
        title: "Butun Insanlar Qardashdir",
        author: "Mahatma Gandhi",
        year: 1945,
        genre: genres[3]!,
        price: 12.55)
  ];

  void displayBooks() {
    books.sort((a, b) => a.author.length.compareTo(b.author.length));
    space();
    print("Kitabxanada Ashagidaki Kitablar Movcuddur");
    booksListing();
  }

  void addBook() {
    space();
    print("Kitabin adini daxil edin");
    space();
    String addTitle = stdin.readLineSync().toString();
    space();
    print("Muellifin adini daxil edin");
    space();
    String addAuthor = stdin.readLineSync().toString();
    space();
    print("Yayim tarixi");
    space();
    int addYear = int.parse(stdin.readLineSync().toString());
    space();
    print("Janr");
    space();
    String addGenre = stdin.readLineSync().toString();
    space();
    print("Qiymet");
    space();
    double addPrice = double.parse(stdin.readLineSync().toString());

    Book addNewBook = Book(
        title: addTitle,
        author: addAuthor,
        year: addYear,
        genre: addGenre,
        price: addPrice);
    books.add(addNewBook);
  }

  void search() {
    space();
    print("[1]. Kitabin Adina Gore");
    space();
    print("[2]. Muellifin Adina Gore");
    space();
    print("[3]. Janr Uzre");
    space();
    print("[4]. Qiymet Uzre");
    space();

    int? chooseSearch = int.tryParse(stdin.readLineSync().toString());

    switch (chooseSearch) {
      case 1:
        searchByTitle();
        break;
      case 2:
        searchByAuthor();
        break;
      case 3:
        break;
      case 4:
        break;
      default:
        print("Duzgun Sechim Edin");
    }
  }

  void searchByTitle() {
    space();
    print("Kitab adini daxil edin");
    space();
    String searchTitle = stdin.readLineSync().toString().toLowerCase();
    space();

    for (int i = 0; i < books.length; i++) {
      if (books[i].title.toLowerCase().contains(searchTitle)) {
        int countAuthor = 0;
        int countTitle = 0;
        int countGenre = 0;
        if (books[i].author.length < 16) {
          countAuthor = 16 - books[i].author.length;
          books[i].author = (books[i].author) + (" " * countAuthor);
        }
        if (books[i].title.length < 25) {
          countTitle = 25 - books[i].title.length;
          books[i].title = (books[i].title) + (" " * countTitle);
        }
        if (books[i].genre.length < 10) {
          countGenre = 10 - books[i].genre.length;
          books[i].genre = (books[i].genre) + (" " * countGenre);
        }
        space();
        print(
            "Muellif                   Kitabin Adi            Yayim Tarixi        Janr       Qiymeti (AZN)");
        space();
        print(
            "${books[i].author}     ${books[i].title}       ${books[i].year}           ${books[i].genre}      ${books[i].price}");
      }
    }
  }

  void searchByAuthor() {
    space();
    print("Yazarin adini daxil edin");
    space();
    String searchAuthor = stdin.readLineSync().toString().toLowerCase();
    space();

    for (int i = 0; i < books.length; i++) {
      if (books[i].author.toLowerCase().contains(searchAuthor)) {
        int countAuthor = 0;
        int countTitle = 0;
        int countGenre = 0;
        if (books[i].author.length < 16) {
          countAuthor = 16 - books[i].author.length;
          books[i].author = (books[i].author) + (" " * countAuthor);
        }
        if (books[i].title.length < 25) {
          countTitle = 25 - books[i].title.length;
          books[i].title = (books[i].title) + (" " * countTitle);
        }
        if (books[i].genre.length < 10) {
          countGenre = 10 - books[i].genre.length;
          books[i].genre = (books[i].genre) + (" " * countGenre);
        }
        space();
        print(
            "Muellif                   Kitabin Adi            Yayim Tarixi        Janr       Qiymeti (AZN)");
        space();
        print(
            "${books[i].author}     ${books[i].title}       ${books[i].year}           ${books[i].genre}      ${books[i].price}");
      }
    }
  }

  void booksListing() {
    space();
    print(
        "Muellif                   Kitabin Adi            Yayim Tarixi        Janr       Qiymeti (AZN)");
    space();

    for (int i = 0; i < books.length; i++) {
      int countAuthor = 0;
      int countTitle = 0;
      int countGenre = 0;
      if (books[i].author.length < 16) {
        countAuthor = 16 - books[i].author.length;
        books[i].author = (books[i].author) + (" " * countAuthor);
      }
      if (books[i].title.length < 25) {
        countTitle = 25 - books[i].title.length;
        books[i].title = (books[i].title) + (" " * countTitle);
      }
      if (books[i].genre.length < 10) {
        countGenre = 10 - books[i].genre.length;
        books[i].genre = (books[i].genre) + (" " * countGenre);
      }
      print(
          "${books[i].author}     ${books[i].title}       ${books[i].year}           ${books[i].genre}      ${books[i].price}");
    }
  }
}
