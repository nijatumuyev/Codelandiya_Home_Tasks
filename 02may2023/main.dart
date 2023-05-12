import 'dart:io';
import 'dart:math';
import 'products.dart';
import 'registration.dart';
import 'users.dart';
import 'admins.dart';
import 'guest_mod.dart';
import 'user_panel.dart';

int loggedUserIndex = -1;
String newProductName = "";
double newProductPrice = 0;
int newProductCode = 0;
String newProductInfo = "";
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
      login();
      break;
    case 3:
      reg1();
      break;
    default:
      print("Lutfen duzgun sechim edin");
      loginType();
  }
}

void space() {
  print(" " * 10);
}
