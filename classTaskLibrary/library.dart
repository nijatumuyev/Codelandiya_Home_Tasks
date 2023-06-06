import 'book.dart';
import 'dart:io';
import 'main.dart';

late int countAuthor;
late int countGenre;
late int countTitle;

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

  void displayBooks(int index) {
    space();
    print("Kitabxanada Ashagidaki Kitablar Movcuddur");
    space();
    for (int i = 0; i < books.length; i++) {
      index++;
      listPrinting(index, i);
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
    space();
    int? addGenre = int.tryParse(stdin.readLineSync().toString());
    space();
    print("Qiymet");
    space();
    double addPrice = double.parse(stdin.readLineSync().toString());
    space();
    print("Kitab Ugurla Elave Olundu");
    Book addNewBook = Book(
        title: addTitle,
        author: addAuthor,
        year: addYear,
        genre: genres[addGenre]!,
        price: addPrice);
    books.add(addNewBook);
  }

  void search() {
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
        searchByTitle(0);
        break;
      case 2:
        searchByAuthor(0);
        break;
      case 3:
        space();
        print("Axatris etmek istediyiniz Janri sechin");
        space();
        searchByGenres(0);
        break;
      case 4:
        searchByYear(0);
        break;
      case 5:
        searchByPrice(0);
        break;
      default:
        print("Duzgun Sechim Edin");
        search();
    }
  }

  void searchByTitle(int index) {
    print("Kitab adini daxil edin");
    space();
    String searchTitleKey = stdin.readLineSync().toString().toLowerCase();
    space();
    for (int i = 0; i < books.length; i++) {
      if (books[i].title.toLowerCase().contains(searchTitleKey)) {
        index++;
        listPrinting(index, i);
      }
    }
    if (index == 0) {
      print("Axtarish uzre hec bir netice tapilmadi");
      print("Yeniden cehd edin");
      searchByTitle(0);
    }
  }

  void searchByAuthor(int index) {
    print("Yazarin adini daxil edin");
    space();
    String searchAuthorKey = stdin.readLineSync().toString().toLowerCase();
    space();
    for (int i = 0; i < books.length; i++) {
      if (books[i].author.toLowerCase().contains(searchAuthorKey)) {
        index++;
        listPrinting(index, i);
      }
    }
    if (index == 0) {
      print("Axtarish uzre hec bir netice tapilmadi");
      print("Yeniden cehd edin");
      searchByAuthor(0);
    }
  }

  void searchByGenres(int index) {
    genres.forEach((key, value) {
      print("[$key] $value");
    });
    space();
    int? searchGenreKey = int.tryParse(stdin.readLineSync().toString());
    space();
    if (genres.containsKey(searchGenreKey)) {
      for (int i = 0; i < books.length; i++) {
        if (books[i].genre == genres[searchGenreKey]) {
          index++;
          listPrinting(index, i);
        }
      }
      if (index == 0) {
        print("Bu Janr uzre kitab movcud deyil.");
        space();
        searchByGenres(0);
      }
    } else {
      print("Duzgun sechim edin");
      space();
      searchByGenres(0);
    }
  }

  void searchByYear(int index) {
    books.sort((a, b) => a.year.compareTo(b.year));
    print("Hansi ilden ? (Max 4 simvol) (Mes: 1935)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    int? yearFrom = int.tryParse(stdin.readLineSync().toString());
    yearFrom != null ? space() : yearFrom = books.first.year;
    print("Hansi iledek ? (Max 4 simvol) (Mes: 2018)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    int? yearTo = int.tryParse(stdin.readLineSync().toString());
    yearTo != null ? space() : yearTo = books.last.year;
    if (yearFrom > yearTo) {
      yearFrom = yearFrom + yearTo;
      yearTo = yearFrom - yearTo;
      yearFrom = yearFrom - yearTo;
    }
    if (yearFrom > books.last.year || yearTo < books.first.year) {
      print("Sechdiyiniz araliqda kitab movcud deyil");
      print("Yeniden axtarish edin");
      space();
      searchByYear(0);
    }
    for (int i = 0; i < books.length; i++) {
      if (books[i].year >= yearFrom && books[i].year <= yearTo) {
        index++;
        listPrinting(index, i);
      }
    }
  }

  void searchByPrice(int index) {
    books.sort((a, b) => a.price.compareTo(b.price));
    print("Minimal meblegi daxil edin (Mes: 8)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    double? priceFrom = double.tryParse(stdin.readLineSync().toString());
    space();
    if (priceFrom == null) {
      priceFrom = 0;
    }
    print("Maksimal meblegi daxil edin (Mes: 55)");
    print("Bosh buraxmaq ucun Enter daxil edin");
    space();
    double? priceTo = double.tryParse(stdin.readLineSync().toString());
    if (priceTo == null) {
      priceTo = books.last.price;
    }
    if (priceFrom > priceTo) {
      priceFrom = priceFrom + priceTo;
      priceTo = priceFrom - priceTo;
      priceFrom = priceFrom - priceTo;
    }
    space();
    for (int i = 0; i < books.length; i++) {
      if (priceFrom <= books[i].price && books[i].price <= priceTo) {
        index++;
        listPrinting(index, i);
      }
    }
    if (priceFrom > books.last.price || priceTo < books.first.price) {
      print("Secdiyiniz araliqda kitab movcud deyil");
      print("Yeniden axtarish edin");
      space();
      searchByPrice(0);
    }
  }

  void listPrinting(int index, int i) {
    if (index == 1) {
      print(
          "Muellif                   Kitabin Adi            Yayim Tarixi        Janr       Qiymet (AZN)");
      space();
    }
    if (books[i].author.length < countAuthor) {
      books[i].author =
          (books[i].author) + (" " * (countAuthor - books[i].author.length));
    }
    if (books[i].title.length < countTitle) {
      books[i].title =
          (books[i].title) + (" " * (countTitle - books[i].title.length));
    }
    if (books[i].genre.length < countGenre) {
      books[i].genre =
          (books[i].genre) + (" " * (countGenre - books[i].genre.length));
    }
    print(
        "${books[i].author}     ${books[i].title}       ${books[i].year}          ${books[i].genre}      ${books[i].price}");
    books[i].genre = (books[i].genre).split(" ").toList().join();
  }

  void sorting() {
    books.sort((a, b) => a.author.length.compareTo(b.author.length));
    countAuthor = books.last.author.length;
    books.sort((a, b) => a.title.length.compareTo(b.title.length));
    countTitle = books.last.title.length;
    books.sort((a, b) => a.genre.length.compareTo(b.genre.length));
    countGenre = books.last.genre.length;
    books.sort((a, b) => a.author.length.compareTo(b.author.length));
  }
}
