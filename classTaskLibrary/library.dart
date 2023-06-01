import 'book.dart';
import 'dart:io';
import 'main.dart';

class Library {
  List<Book> books = [
    Book(title: "Cehennemden Gelen Sesler", author: "Elxan Elatli", year: 2013),
    Book(title: "Gunesh Altinda Sher", author: "Agatha Chiristie", year: 1955),
    Book(
        title: "Butun Insanlar Qardashdir",
        author: "Mahatma Gandhi",
        year: 1945)
  ];

  void displayBooks() {
    books.sort((a, b) => a.author.length.compareTo(b.author.length));
    space();
    print("Kitabxanada Ashagidaki Kitablar Movcuddur");
    space();
    print(
        "Muellif                   Kitabin Adi                   Yayim Tarixi");
    space();
    books.forEach((element) {
      print(
          "${element.author}         ${element.title}         ${element.year}");
    });
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

    Book addNewBook = Book(title: addTitle, author: addAuthor, year: addYear);
    books.add(addNewBook);
  }

  void search() {
    space();
    print("Acar sozu daxil edin");
    space();
    String searchKey = stdin.readLineSync().toString();
    space();
    for (int i = 0; i < books.length; i++) {
      if (books[i].author.contains(searchKey)) {
        print("${books[i].author}      ${books[i].title}     ${books[i].year}");
      }
    }
  }
}
