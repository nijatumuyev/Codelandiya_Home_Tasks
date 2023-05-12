import 'dart:io';
import 'main.dart';
import 'products.dart';

void guestMod() {
  space();
  print("Hormetli istifadechi siz qonaq girisi etdiyiniz ucun,");
  print("sadece mehsullarin siyahisina baxa bilersiniz");
  print("alis-veris ede bilmezsiniz.");
  space();
  productListing();
  askingToGuest();
}

void askingToGuest() {
  space();
  print("Esas Sehifeye donmek isteyirsiniz?");
  space();
  print("Beli [1]");
  print("Xeyr [2]");
  askingToGuestCheck();
}

void askingToGuestCheck() {
  space();
  int? guestInput = int.tryParse(stdin.readLineSync().toString());
  switch (guestInput) {
    case 1:
      main();
      break;
    case 2:
      break;
    default:
      print("Lutfen duzgun sechim edin");
      askingToGuestCheck();
  }
}
