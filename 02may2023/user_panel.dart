import 'dart:io';
import 'products.dart';
import 'main.dart';
import 'admins.dart';
import 'users.dart';
import 'registration.dart';

int productIndex = -1;

void userWelcome() {
  space();
  print("Hormetli $loggedName $loggedSurname xosh geldiniz!");
  space();
  print(
      "Ashagidaki stokda movcud olan mehsullardan istediyinizi sece bilersiniz.");
  space();
  productListing();
  space();
  print("Secdiyiniz mehsulu sebete elave etmek ucun mehsulun barkodunu yazin.");
  space();
  productChoiceInput();
}

void productChoiceInput() {
  int? productChoice = int.tryParse(stdin.readLineSync().toString());
  for (int i = 0; i < productList.length; i++) {
    if (productList[i].code == productChoice) {
      productIndex = i;
      productChoicePanel();
      break;
    }
  }
  if (productIndex == -1) {
    space();
    print("Stokda bele bir mehsul movcud deyil");
    print("Duzgun sechim edin");
    space();
    productChoiceInput();
  }
}

void productChoicePanel() {
  space();
  print("Hormetli $loggedName $loggedSurname");
  print("Sizin sechdiyiniz mehsul: ${productList[productIndex].name}");
  print(
      "Mehsulun nagd alishda qiymeti ${productList[productIndex].price} Manatdir");
  space();
  print("Alisverisi tamamlamaq uhun [1] daxil edin");
  print("Mehsul sechimine davam etmek uhun [2] daxil edin");
  print("Cixis etmek uhun [3] daxil edin");
}
