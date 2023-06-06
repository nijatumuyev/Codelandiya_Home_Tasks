import 'dart:io';
import 'library.dart';

Library allBooks = Library();

void main() {
  allBooks.sorting();
  space();
  print("[1] Butun kitablari Goster");
  print("[2] Kitab axtar");
  print("[3] Kitab elave et");
  space();
  int? choose = int.tryParse(stdin.readLineSync().toString());
  switch (choose) {
    case 1:
      allBooks.displayBooks(0);
      main();
      break;
    case 2:
      allBooks.search();
      main();
      break;
    case 3:
      allBooks.addBook();
      main();
      break;
    default:
      print("Duzgun Sechim Edin");
      main();
  }
}

void space() {
  print(" " * 10);
}
