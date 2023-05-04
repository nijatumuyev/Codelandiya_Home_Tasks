import 'dart:io';
import 'dart:math';
import 'productList.dart';

List<Products> productList = [
  Products(name: "IPhone 14 - 256 GB", price: 2000, code: 7852),
  Products(name: "IPhone 14 - 512 GB", price: 2200, code: 5336),
  Products(name: "IPhone 14 Pro - 256 GB", price: 2500, code: 9252),
  Products(name: "IPhone 14 Pro - 512 GB", price: 2850, code: 2498),
  Products(name: "IPhone 14 Pro Max - 256 GB", price: 3100, code: 6297),
  Products(name: "IPhone 14 Pro Max - 512 GB", price: 3450, code: 8774),
];

late String productName;
late int productPrice;
late String userName;

RegExp charAzDetector = new RegExp(r'[^0-9]');

void main() {
  print("Qonaq girishi uchun [1] daxil edin.");
  print("Movcud hesabiniz varsa [2] daxil edin.");
  loginType();
}

//Login Type method
void loginType() {
  int loginChoice = int.parse(stdin.readLineSync().toString());
  if (loginChoice == 1) {
    guestMod();
  } else if (loginChoice == 2) {
    userNameCheck();
  } else {
    print("Lutfen duzgun sechim edin");
    loginType();
  }
}

//When user logged as guest

void guestMod() {
  print(" " * 10);
  print("Hormetli istifadechi siz qonaq girisi etdiyiniz"
      " ucun sadece mehsullarin siyahisina baxa bilersiniz"
      " alis-veris ede bilmezsiniz.");
  print(" " * 10);
  print("Telefonun Modeli               Qiymeti (Azn)     Bar Kodu");
  print("---------------------------------------------------------");
  for (int i = 0; i < productList.length; i++) {
    if (productList[i].name.length < 26) {
      productList[i].name =
          productList[i].name + (" " * (26 - productList[i].name.length));
      print("${productList[i].name}   "
          "      ${productList[i].price}  "
          "          ${productList[i].code}");
    } else {
      print("${productList[i].name}    "
          "     ${productList[i].price}      "
          "      ${productList[i].code}");
    }
  }
  print(" " * 10);
  print("Yeniden bashlayib movcud hesaba daxil olmaq isteyirsiniz?");
  print(" " * 10);
  print("Beli [1]");
  print("Xeyr [2]");
  firstContinue();
}

//First Continue or Not?!

void firstContinue() {
  print(" " * 10);
  int firsttContinue = int.parse(stdin.readLineSync().toString());
  if (firsttContinue == 1) {
    userNameCheck();
  } else if (firsttContinue == 2) {
    print("Bizi sechdiyiniz ucun teshekkurler");
  } else {
    print("Lutfen duzgun sechim edin");
    firstContinue();
  }
}

//When user logged to an account

void userNameCheck() {
  print("Istifadeci adinizi daxil edin");
  userName = stdin.readLineSync().toString().toUpperCase();
  if (userName.isEmpty || userName.contains(" ")) {
    print("Istifadechi adi bosh ola bilmez");
    userNameCheck();
  } else {
    userPassCheck();
  }
}

void userPassCheck() {
  print("Shifrenizi daxil edin");
  String userPass = stdin.readLineSync().toString();
  if (userPass.isEmpty || userPass.contains(" ")) {
    print("Shifre bosh ola bilmez");
    userPassCheck();
  } else {
    print(" " * 10);
    userNameMethod();
    userModPanel();
  }
}

void userNameMethod() {
  print("Hormetli $userName xosh geldiniz");
}

void userModPanel() {
  print(" " * 10);
  print(
      "Ashagidaki stokda movcud olan mehsullardan istediyinizi sece bilersiniz.");
  print(" " * 10);
  print("Telefonun Modeli               Qiymeti (Azn)     Bar Kodu");
  print("---------------------------------------------------------");
  for (int i = 0; i < productList.length; i++) {
    if (productList[i].name.length < 26) {
      productList[i].name =
          productList[i].name + (" " * (26 - productList[i].name.length));
      print("${productList[i].name}   "
          "      ${productList[i].price}  "
          "          ${productList[i].code}");
    } else {
      print("${productList[i].name}    "
          "     ${productList[i].price}      "
          "      ${productList[i].code}");
    }
  }
  print(" " * 10);
  print("Secdiyiniz mehsulu sebete elave etmek ucun mehsulun barkodunu yazin.");
  productChoiceInput();
}

void productChoiceInput() {
  int productChoice = int.parse(stdin.readLineSync().toString());

  if (productChoice - productList[0].code == 0) {
    productName = productList[0].name;
    productPrice = productList[0].price;
  } else if (productChoice - productList[1].code == 0) {
    productName = productList[1].name;
    productPrice = productList[1].price;
  } else if (productChoice - productList[2].code == 0) {
    productName = productList[2].name;
    productPrice = productList[2].price;
  } else if (productChoice - productList[3].code == 0) {
    productName = productList[3].name;
    productPrice = productList[3].price;
  } else if (productChoice - productList[4].code == 0) {
    productName = productList[4].name;
    productPrice = productList[4].price;
  } else if (productChoice - productList[5].code == 0) {
    productName = productList[5].name;
    productPrice = productList[5].price;
  } else {
    productChoiceError();
  }
  print(" " * 10);
  productChoicePanel();
}

void productChoicePanel() {
  print("Hormetli $userName");
  print("Sizin sechdiyiniz mehsul: $productName");
  print("Mehsulun nagd alishda qiymeti $productPrice Manatdir");
  print(" " * 10);
  print("Alisverisi tamamlamaq uhun [1] daxil edin");
  print("Mehsul sechimine davam etmek uhun [2] daxil edin");
  print("Cixis etmek uhun [3] daxil edin");
  secondContinue();
}

void secondContinue() {
  int seconddContinueInput = int.parse(stdin.readLineSync().toString());
  switch (seconddContinueInput) {
    case 1:
      cashOrCard();
      break;
    case 2:
      userModPanel();
      break;
    case 3:
      print(" " * 10);
      print("Bizi sechdiyiniz ucun teshekkurler");
      break;
    default:
      print(" " * 10);
      print("Lutfen duzgun sechim edin");
      secondContinue();
  }
}

void productChoiceError() {
  print("Stokda bele bir mehsul yoxdur.");
  print("Lutfen duzgun sechim edin!");
  productChoiceInput();
}

void cashOrCard() {
  print(" " * 10);
  print("Nagd odenish uchun [1] daxil edin");
  print("Kartla odenish uchun [2] daxil edin");
  cashOrCardInput();
}

void cashOrCardInput() {
  int cashOrCardInputt = int.parse(stdin.readLineSync().toString());
  switch (cashOrCardInputt) {
    case 1:
      cashPaymentMethod();
      break;
    case 2:
      cardPaymentMethod();
      break;
    default:
      print("Lutfen duzgun sechim edin!");
      cashOrCardInput();
  }
}

void cashPaymentMethod() {
  print(" " * 10);
  print("Catdirilma edilmesi uchun [1] daxil edin");
  print("Ozunuz magazadan gelib alacaqsinizsa [2] daxil edin");
  bringOrDeliveryInput();
}

void cardPaymentMethod() {
  print(" " * 10);
  print("Birbasha odenish ucun [1] daxil edin");
  print("Taksitle odenish uchun [2] daxil edin");
  cardPaymentInput();
}

void cardPaymentInput() {
  int cardPaymentInputt = int.parse(stdin.readLineSync().toString());
  switch (cardPaymentInputt) {
    case 1:
      directlyPay();
      break;
    case 2:
      creditPay();
      break;
    default:
      print("Lutfen duzgun sechim edin");
      cardPaymentInput();
  }
}

void directlyPay() {
  print(" " * 10);
  print("Odenishi tamamlamaq uchun Kartin 16 reqemli kodunu daxil edin");
  cardNumber();
}

void cardNumber() {
  String cardNumberr = stdin.readLineSync().toString();
  if (cardNumberr.length != 16 || cardNumberr.contains(charAzDetector)) {
    print(" " * 10);
    print("Lutfen kart nomresini duzgun qeyd edin");
    cardNumber();
  } else {
    print(" " * 10);
    print("Kartin son istifade tarixini daxil edin");
    print("Ay daxil edin (mes: Yanvar - 01)");
    cardexpiryDateMonth();
  }
}

void cardexpiryDateMonth() {
  String expiryDateMonthh = stdin.readLineSync().toString();
  int expiryDateMonthhh =
      int.parse(expiryDateMonthh.replaceAll(RegExp(r'[^0-9]'), '0'));

  if (expiryDateMonthh.length != 2 ||
      expiryDateMonthhh > 12 ||
      expiryDateMonthhh < 1 ||
      expiryDateMonthh.contains(charAzDetector)) {
    print(" " * 10);
    print("Lutfen ayi duzgun qeyd edin (mes: Yanvar - 01)");
    cardexpiryDateMonth();
  } else {
    print(" " * 10);
    print("Il daxil edin (mes: 2024)");
    cardExpiryDateYear();
  }
}

void cardExpiryDateYear() {
  String expiryDateYear = stdin.readLineSync().toString();
  int expiryDateYearr =
      int.parse(expiryDateYear.replaceAll(RegExp(r'[^0-9]'), '0'));
  if (expiryDateYear.length != 4 ||
      expiryDateYearr > 2029 ||
      expiryDateYearr < 2017 ||
      expiryDateYear.contains(charAzDetector)) {
    print(" " * 10);
    print("Lutfen ili duzgun qeyd edin (mes: 2024)");
    cardExpiryDateYear();
  } else {
    print(" " * 10);
    print("3 reqemli tehlukesizlik kodu (CVC) daxil edin (mes: 376)");
    cardCvc();
  }
}

void cardCvc() {
  String cardCvcInput = stdin.readLineSync().toString();
  int cardCvcInputt =
      int.parse(cardCvcInput.replaceAll(RegExp(r'[^0-9]'), '0'));
  if (cardCvcInput.length != 3 ||
      cardCvcInputt > 999 ||
      cardCvcInputt < 001 ||
      cardCvcInput.contains(charAzDetector)) {
    print(" " * 10);
    print("Lutfen tehlukesizlik (CVC) kodunu duzgun daxil edin (mes: 376)");
    cardCvc();
  } else {
    print(" " * 10);
    print("Odenish ugurla tamamlandi");
    print("Bizi sechdiyiniz ucun teshekkurler");
    print(" " * 10);
  }
}

void creditPay() {
  print(" " * 10);
  print("Hansi kredit karti ile odenish etmek isteyirsiniz?");
  print(" " * 10);
  print("Birkart [1]");
  print("Tamkart [2]");
  print("Bolkart [3]");
  creditPayInput();
}

void creditPayInput() {
  int creditPayInputt = int.parse(stdin.readLineSync().toString());
  switch (creditPayInputt) {
    case 1:
      birKart();
      break;
    case 2:
      tamKart();
      break;
    case 3:
      bolKart();
      break;
    default:
      print("Lutfen duzgun sechim edin");
      creditPayInput();
  }
}

void birKart() {
  print(" " * 10);
  print("Birkart ile 3, 6 ,12 , 18 və 24 ayliq odenish var");
  print("Qiymet ise stabil qalır.");
  print("Neche ayliq hisselere bolek?");
  birKartChoice();
}

void birKartChoice() {
  int birKartChoicee = int.parse(stdin.readLineSync().toString());
  if (birKartChoicee == 3 ||
      birKartChoicee == 6 ||
      birKartChoicee == 12 ||
      birKartChoicee == 18 ||
      birKartChoicee == 24) {
    print(" " * 10);
    print("$birKartChoicee ayliq hisselere bolunecek.");
    print(
        "Ayliq odenish: ${(productPrice / birKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print("Toplam odeyeceyiniz mebleg: $productPrice Azn olacaq.");
    directlyPay();
  } else {
    print(" " * 10);
    print("Lutfen duzgun sechim edim!");
    birKartChoice();
  }
}

void tamKart() {
  print(" " * 10);
  print("Tamkart ile 3, 6 və 12 ayliq odenish var.");
  print("12 aylıq sechildikde  mehsulun qiymetinin üzerine 25% elave olunur.");
  print("Neche ayliq hisselere bolek?");
  tamKartChoice();
}

void tamKartChoice() {
  int tamKartChoicee = int.parse(stdin.readLineSync().toString());
  if (tamKartChoicee == 3 || tamKartChoicee == 6) {
    print(" " * 10);
    print("$tamKartChoicee ayliq hisselere bolunecek.");

    print(
        "Ayliq odenish: ${(productPrice / tamKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print("Toplam odeyeceyiniz mebleg: $productPrice Azn olacaq.");
    directlyPay();
  } else if (tamKartChoicee == 12) {
    double tamKartNewPrice = productPrice + (productPrice * 25 / 100);
    print(" " * 10);
    print("$tamKartChoicee ayliq hisselere bolunecek.");

    print(
        "Ayliq odenish: ${(tamKartNewPrice / tamKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print("Toplam odeyeceyiniz mebleg: $tamKartNewPrice Azn olacaq.");
    directlyPay();
  } else {
    print(" " * 10);
    print("Lutfen duzgun sechim edim!");
    tamKartChoice();
  }
}

void bolKart() {
  print(" " * 10);
  print("Bolkart ile  3 və 6 ayliq odenishler var.");
  print("6 ayliq sechildikde her ay uchun 10 azn elave olunur.");
  print("Neche ayliq hisselere bolek?");
  bolKartChoice();
}

void bolKartChoice(){
  int bolKartChoicee = int.parse(stdin.readLineSync().toString());
  if (bolKartChoicee == 3) {
    print(" " * 10);
    print("$bolKartChoicee ayliq hisselere bolunecek.");

    print(
        "Ayliq odenish: ${(productPrice / bolKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print("Toplam odeyeceyiniz mebleg: $productPrice Azn olacaq.");
    directlyPay();
  } else if (bolKartChoicee == 6) {
    double bolKartNewPrice = productPrice + 60;
    print(" " * 10);
    print("$bolKartChoicee ayliq hisselere bolunecek.");

    print(
        "Ayliq odenish: ${(bolKartNewPrice / bolKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print("Toplam odeyeceyiniz mebleg: $bolKartNewPrice Azn olacaq.");
    directlyPay();
  } else {
    print(" " * 10);
    print("Lutfen duzgun sechim edim!");
    bolKartChoice();
  }
}



void bringOrDeliveryInput() {
  int bringOrDeliveryInputt = int.parse(stdin.readLineSync().toString());
  switch (bringOrDeliveryInputt) {
    case 1:
      print(" " * 10);
      print(
          "Diqqet catdirilma zamani mehsulun qiymetine 10 Azn elave olunacaqdir.");
      print("Toplam odeyeceyiniz mebleg ${productPrice + 10} Azn'dir.");
      deliveryMethod();
      break;
    case 2:
      print(" " * 10);
      print("Tezlikle sizi magazamizda gormek umidi ile.");
      print("Bizi sechdiyiniz ucun teshekkurler.");
      print(" " * 10);
      break;
    default:
      print("Lutfen duzgun sechim edin!");
      bringOrDeliveryInput();
  }
}

void deliveryMethod() {
  print(" " * 10);
  print("Lutfen catdirilma olunacaq unvani qeyd edin");
  deliveryInput();
}

void deliveryInput() {
  String deliveryInputt = stdin.readLineSync().toString();
  if (deliveryInputt.isEmpty || deliveryInputt.length < 2) {
    print(" " * 10);
    print("Lutfen Unvani duzgun qeyd edin");
    deliveryInput();
  } else {
    int randomday = Random().nextInt(4) + 1;
    print(" " * 10);
    print("Sechdiyiniz mehsul: $productName");
    print("Texmini chatdirilma muddeti: [$randomday] ish gunu");
    print("Bizi sechdiyiniz ucun teshekkurler.");
    print(" " * 10);
  }
}
