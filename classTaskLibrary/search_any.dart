import 'dart:io';
import 'book.dart';
import 'main.dart';

List<Search> searchlist = [];
int? anyGenre;

class Search {
  String? titleSearch;
  String? authorSearch;
  int? genreSearch;
  int? yearFromSearch;
  int? yearToSearch;
  double? priceFromSearch;
  double? priceToSearch;
  Search(
      {required this.titleSearch,
      required this.authorSearch,
      required this.genreSearch,
      required this.yearFromSearch,
      required this.yearToSearch,
      required this.priceFromSearch,
      required this.priceToSearch});
}

void searchForAny(int index) {
  print("Kitabin adini daxil edin");
  print("Bosh buraxmaq ucun Enter daxil edin");
  String? anyTitle = stdin.readLineSync().toString().toLowerCase();
  space();
  print("Muellifin adini daxil edin");
  print("Bosh buraxmaq ucun Enter daxil edin");
  String anyAuthor = stdin.readLineSync().toString().toLowerCase();
  space();
  print("Janr sechin");
  genres.forEach((key, value) {
    print("[$key] $value");
  });
  space();
  print("Bosh buraxmaq ucun Enter daxil edin");
  while (true) {
    anyGenre = int.tryParse(stdin.readLineSync().toString());
    if (genres.containsKey(anyGenre) || anyGenre == null) {
      break;
    } else {
      print("Lutfen duzgun daxil edin");
    }
  }
  space();
  allBooks.books.sort((a, b) => a.year.compareTo(b.year));
  print("Muddet araligi daxil edin");
  print("Hansi ilden ? (Max 4 simvol) (Mes: 1935)");
  print("Bosh buraxmaq ucun Enter daxil edin");
  int? anyYearFrom = int.tryParse(stdin.readLineSync().toString());
  space();
  print("Hansi iledek ? (Max 4 simvol) (Mes: 2018)");
  print("Bosh buraxmaq ucun Enter daxil edin");
  int? anyYearTo = int.tryParse(stdin.readLineSync().toString());
  space();
  anyYearFrom != null ? space() : anyYearFrom = allBooks.books.first.year;
  anyYearTo != null ? space() : anyYearTo = allBooks.books.last.year;
  if (anyYearFrom > anyYearTo) {
    anyYearFrom = anyYearFrom + anyYearTo;
    anyYearTo = anyYearFrom - anyYearTo;
    anyYearFrom = anyYearFrom - anyYearTo;
  }
  allBooks.books.sort((a, b) => a.price.compareTo(b.price));
  print("Qiymet araligi daxil edin");
  print("Minimal meblegi daxil edin (Mes: 8)");
  print("Bosh buraxmaq ucun Enter daxil edin");
  double? anyPriceFrom = double.tryParse(stdin.readLineSync().toString());
  space();
  print("Maksimal meblegi daxil edin (Mes: 55)");
  print("Bosh buraxmaq ucun Enter daxil edin");
  double? anyPriceTo = double.tryParse(stdin.readLineSync().toString());
  space();
  anyPriceFrom != null ? space() : anyPriceFrom = allBooks.books.first.price;
  anyPriceTo != null ? space() : anyPriceTo = allBooks.books.last.price;
  if (anyYearFrom > anyYearTo) {
    anyYearFrom = anyYearFrom + anyYearTo;
    anyYearTo = anyYearFrom - anyYearTo;
    anyYearFrom = anyYearFrom - anyYearTo;
  }

  Search newSearch = Search(
      titleSearch: anyTitle,
      authorSearch: anyAuthor,
      genreSearch: anyGenre,
      yearFromSearch: anyYearFrom,
      yearToSearch: anyYearTo,
      priceFromSearch: anyPriceFrom,
      priceToSearch: anyPriceTo);
  searchlist.add(newSearch);

  for (int i = 0; i < allBooks.books.length; i++) {
    if ((anyPriceFrom <= allBooks.books[i].price &&
            allBooks.books[i].price <= anyPriceTo) ||
        (allBooks.books[i].year >= anyYearFrom &&
            allBooks.books[i].year <= anyYearTo) ||
        (allBooks.books[i].title.toLowerCase().contains(anyTitle)) ||
        (allBooks.books[i].author.toLowerCase().contains(anyAuthor)) ||
        (allBooks.books[i].genre == genres[anyGenre])) {
      index ++;
      allBooks.listPrinting(index, i);
    }
  }
  if (index == 0) {
    print("Axtarishiniz uzre hech bir netice tapilmadi");
  }
}
