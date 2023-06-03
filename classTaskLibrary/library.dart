import 'book.dart';
import 'dart:io';
import 'main.dart';

int countForPrint = 1;
int countAuthor = 0;
int countTitle = 0;
int countGenre = 0;

class Library {
  List<Book> books = [
    Book(
        title: "Cehennemden Gelen Sesler",
        author: "Elxan Elatli",
        year: 2007,
        genre: genres[2]!,
        price: 8.50),
    Book(
        title: "Gunesh Altinda Sher",
        author: "Agatha Christie",
        year: 1932,
        genre: genres[2]!,
        price: 11),
    Book(
        title: "Butun Insanlar Qardashdir",
        author: "Mahatma Gandhi",
        year: 1945,
        genre: genres[4]!,
        price: 12.55),
    Book(
        title: "Masadaki Kartlar",
        author: "Agatha Christie",
        year: 1936,
        genre: genres[2]!,
        price: 6.99),
  ];

  void displayBooks() {
    books.sort((a, b) => a.author.length.compareTo(b.author.length));
    space();
    print("Kitabxanada Ashagidaki Kitablar Movcuddur");
    for (int i = 0; i < books.length; i++) {
      countForPrintDef(0, i);
      listPrinting(i);
    }
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
    print("Janr Sechin");
    space();
    genres.forEach((key, value) {
      print("[$key] $value");
    });
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
    countForPrint = 1;
    space();
    print("[1] Kitabin Adina Gore");
    print("[2] Muellifin Adina Gore");
    print("[3] Janrlara Gore");
    print("[4] Yayim Tarixine Gore");
    print("[5] Qiymet Araligina Gore");
    space();
    int? chooseSearch = int.tryParse(stdin.readLineSync().toString());
    space();
    switch (chooseSearch) {
      case 1:
        searchByTitle();
        break;
      case 2:
        searchByAuthor();
        break;
      case 3:
        space();
        print("Axatris etmek istediyiniz Janri sechin");
        space();
        searchByGenres();
        break;
      case 4:
        searchByYear();
        break;
      case 5:
        searchByPrice();
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

    for (int i = 0; i < books.length; i++) {
      if (books[i].title.toLowerCase().contains(searchTitle)) {
        countForPrintDef(0, i);
        listPrinting(i);
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
        countForPrintDef(0, i);
        listPrinting(i);
      }
    }
  }

  void searchByGenres() {
    int z = 0;
    genres.forEach((key, value) {
      print("[$key] $value");
    });
    space();
    int? searchGenreKey = int.tryParse(stdin.readLineSync().toString());
    space();
    if (genres.containsKey(searchGenreKey)) {
      for (int i = 0; i < books.length; i++) {
        if (books[i].genre == genres[searchGenreKey]) {
          countForPrintDef(0, i);
          listPrinting(i);
          z = 1;
        }
      }
      if (z == 0) {
        print("Bu Janr uzre kitab movcud deyil.");
        space();
        searchByGenres();
      }
    } else {
      print("Duzgun sechim edin");
      space();
      searchByGenres();
    }
  }

  searchByYear() {
    books.sort((a, b) => a.year.compareTo(b.year));
    print("Hansi ilden ? (Max 4 simvol) (Mes: 1935)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    int? endYear = null;
    int? beginYear = int.tryParse(stdin.readLineSync().toString());
    if (beginYear == null) {
      beginYear = books.first.year;
      print("Hansi iledek ? (Max 4 simvol) (Mes: 2018)");
      print("Bosh buraxmaq ucun Enter daxil edin");
      space();
      endYear = int.tryParse(stdin.readLineSync().toString());
      if (endYear == null) {
        endYear = DateTime.now().year;
        print("Her ikisi de bosh ola bilmez");
        print("Yeniden axtarish edin");
        space();
        searchByYear();
      } else if (beginYear > books.last.year || endYear < books.first.year) {
        space();
        print("Secdiyiniz muddet araliginda hech bir kitab yoxdur");
        print("Yeniden axtarish edin");
        space();
        searchByYear();
      } else if ((beginYear <= books.last.year && endYear <= books.last.year) ||
          (beginYear <= books.last.year && endYear >= books.last.year)) {
        space();
        for (int i = 0; i < books.length; i++) {
          if (beginYear <= books[i].year && books[i].year <= endYear) {
            countForPrintDef(0, i);
            listPrinting(i);
          }
        }
      }
    } else {
      print("Hansi iledek ? (Max 4 simvol) (Mes: 2018)");
      print("Bosh buraxmaq ucun Enter daxil edin");
      space();
      endYear = int.tryParse(stdin.readLineSync().toString());
      if (beginYear > books.last.year ||
          (beginYear < books.first.year && endYear! < books.first.year)) {
        space();
        print("Secdiyiniz muddet araliginda hech bir kitab yoxdur");
        print("Yeniden axtarish edin");
        space();
        searchByYear();
      } else if (endYear == null) {
        endYear = DateTime.now().year;
        for (int i = 0; i < books.length; i++) {
          if (beginYear <= books[i].year && books[i].year <= endYear) {
            countForPrintDef(0, i);
            listPrinting(i);
          }
        }
      } else if ((beginYear <= books.first.year &&
              endYear <= books.last.year) ||
          (beginYear <= books.first.year && endYear >= books.last.year)) {
        for (int i = 0; i < books.length; i++) {
          if (beginYear <= books[i].year && books[i].year <= endYear) {
            countForPrintDef(0, i);
            listPrinting(i);
          }
        }
      }
    }
  }

  void searchByPrice() {
    int priceTest = 1;
    books.sort((a, b) => a.price.compareTo(b.price));
    print("Minimal meblegi daxil edin (Mes: 8)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    double? minPrice = double.tryParse(stdin.readLineSync().toString());
    space();
    if (minPrice == null) {
      minPrice = 0;
    }

    print("Maksimal meblegi daxil edin (Mes: 55)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    double? maxPrice = double.tryParse(stdin.readLineSync().toString());
    if (maxPrice == null) {
      maxPrice = books.last.price;
    }

    for (int i = 0; i < books.length; i++) {
      if (minPrice <= books[i].price && books[i].price <= maxPrice) {
        countForPrintDef(0, i);
        listPrinting(i);
        priceTest = 1;
      }
    }
    if (priceTest != 1) {
      space();
      print("Secdiyiniz qiymet araliginda hech bir kitab yoxdur");
      print("Yeniden axtarish edin");
      space();
      searchByYear();
    }
  }

  void countForPrintDef(int a, int b) {
    if (a == 0 && b == 0) {
      space();
      print(
          "Muellif                   Kitabin Adi            Yayim Tarixi        Janr       Qiymet (AZN)");
      space();
      a++;
    }
  }

  void listPrinting(int i) {
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
        "${books[i].author}     ${books[i].title}       ${books[i].year}          ${books[i].genre}      ${books[i].price}");
    books[i].genre = (books[i].genre).split(" ").toList().join();
  }
}
