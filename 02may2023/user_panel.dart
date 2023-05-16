import 'dart:io';
import 'products.dart';
import 'main.dart';
import 'users.dart';
import 'payments.dart';
import 'shopping_cart.dart';

int productIndex = -1;
double sum = 0;

void userWelcome() {
  space();
  print(
      "Hormetli ${userList[logIn].name} ${userList[logIn].surname} xosh geldiniz!");
  space();
  print("Ashagidaki mehsullardan istediyinizi sece bilersiniz.");
  space();
  productListing();
  space();
  print("Alishverish etmek ucun mehsulun barkodunu yazin.");
  space();
  productChoiceInput();
}

void productChoiceInput() {
  int? productChoice = int.tryParse(stdin.readLineSync().toString());
  for (int i = 0; i < productList.length; i++) {
    if (productList[i].code == productChoice) {
      productIndex = i;
      addToCart();
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
  print("Sizin sechdiyiniz mehsullar");
  for (int i = 0; i < cartList.length; i++) {
    sum = sum + cartList[i].selectedProductPrice;
    print(
        "[$i] ${cartList[i].selectedProductName}          ${cartList[i].selectedProductPrice}");
  }

  print("Cemi odenilecek mebleg ${sum.toStringAsFixed(2)} Azn");
  space();
  print("Alisverisi tamamlamaq uhun [1] daxil edin");
  print("Mehsul sechimine davam etmek uhun [2] daxil edin");
  print("Cixis etmek uhun [3] daxil edin");
  choice1();
}

void choice1() {
  int? choicee1 = int.tryParse(stdin.readLineSync().toString());
  switch (choicee1) {
    case 1:
      paymentContinue();
      break;
    case 2:
      productListing();
      productChoiceInput();
      productChoicePanel();
      break;
    case 3:
      break;
    default:
      print("Duzgun sechim edin");
      choice1;
  }
}
