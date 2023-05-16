import 'dart:io';
import 'registration.dart';
import 'users.dart';
import 'guest_mod.dart';

String newProductName = "";
double newProductPrice = 0;
int newProductCode = 0;

RegExp azDetector = new RegExp(r'[^0-9]');
RegExp numDetector = new RegExp(r'[^a-zA-Z]');

void main() {
  space();
  print("[1] Qonaq rejimi");
  print("[2] Hesaba girish");
  print("[3] Qeydiyyat");
  space();
  loginType();
}

void loginType() {
  int? loginChoice = int.tryParse(stdin.readLineSync().toString());
  switch (loginChoice) {
    case 1:
      guestMod();
      break;
    case 2:
      loginUsername();
      break;
    case 3:
      registration();
      break;
    default:
      print("Lutfen duzgun sechim edin");
      loginType();
  }
}

void space() {
  print(" " * 10);
}
