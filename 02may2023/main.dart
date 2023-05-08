import 'dart:io';
import 'dart:math';

class Products {
  String name = "";
  double price = 0;
  int code = 0;
  Products({required this.name, required this.price, required this.code});
}

List<Products> productList = [
  Products(name: "IPhone 14 - 256 GB", price: 2000.99, code: 7853712),
  Products(name: "IPhone 14 - 512 GB", price: 2200.00, code: 5336578),
  Products(name: "IPhone 14 Pro - 256 GB", price: 2500.00, code: 9376252),
  Products(name: "IPhone 14 Pro - 512 GB", price: 2850.00, code: 2497798),
  Products(name: "IPhone 14 Pro Max - 256 GB", price: 3100.00, code: 7365297),
  Products(name: "IPhone 14 Pro Max - 512 GB", price: 3450.00, code: 8707774),
];

int productIndex = -1;
late String userName;
late String newProductName;
late double newProductPrice;
late int newProductCode;

RegExp charAzDetector = new RegExp(r'[^0-9]');

void main() {
  print("[1] Qonaq girishi");
  print("[2] Istifadechi girishi");
  print("[3] Admin girishi");
  loginType();
}

//Login Type method
void loginType() {
  int? loginChoice = int.tryParse(stdin.readLineSync().toString());
  switch (loginChoice) {
    case 1:
      guestMod();
      break;
    case 2:
      userNameCheck();
      break;
    case 3:
      userNameCheck();
      break;
    default:
      print("Lutfen duzgun sechim edin");
      loginType();
  }
}

void adminPanelWelcome() {
  print(" " * 10);
  print("Hormetli [Admin] xosh geldiniz.");
  print(" " * 10);
  print("Stokda movcud olan mehsullar ashagida qeyd olunmushdur");
  adminPanel();
}

void adminPanel() {
  print(" " * 10);
  productListing();
  print(" " * 10);
  print("Sisteme yeni mehsul elave edin");
  adminAddNewProduct();
}

void adminLogoutt() {
  String adminLogout = stdin.readLineSync().toString();
  if (adminLogout.length > 0) {
    main();
  } else {
    print("Hechne yazmadan [Enter] daxil edin.");
  }
}

void adminAddNewProduct() {
  print("Mehsul adini daxil edin");
  newProductName = stdin.readLineSync().toString();
  print("Mehsulun qiymetini daxil edin");
  newProductPrice = double.parse(stdin.readLineSync().toString());
  print("Mehsulun kodunu daxil edin");
  newProductCode = int.parse(stdin.readLineSync().toString());

  Products addToList = Products(
      name: "$newProductName", price: newProductPrice, code: newProductCode);
  productList.add(addToList);
  print("Admin girishinden chixmaq ucun [Enter]");
  adminLogoutt();
  adminPanel();
}

//When user logged as guest

void guestMod() {
  print(" " * 10);
  print("Hormetli istifadechi siz qonaq girisi etdiyiniz ucun,");
  print("sadece mehsullarin siyahisina baxa bilersiniz");
  print("alis-veris ede bilmezsiniz.");
  print(" " * 10);
  productListing();
  askingAgain();
}

void productListing() {
  productList
      .sort((Products a, Products b) => a.name.length.compareTo(b.name.length));
  print(" №   Mehsullar                      Qiymeti (Azn)     Barkodu");
  print("-" * 61);
  print(" " * 10);

  for (int i = 0; i < productList.length; i++) {
    String doubletoint = productList[i].price.toString();
    if (productList[i].name.length < 26 ||
        doubletoint.length < 7 ||
        productList[i].code.toString().length < 7) {
      doubletoint = doubletoint + '(7 - doubletoint.length) * ""';
      doubletoint = doubletoint.toString();
      productList[i].name =
          productList[i].name + (" " * (26 - productList[i].name.length));
      print("[${i + 1}]. ${productList[i].name}    "
          "    ${productList[i].price}    "
          "     ${productList[i].code}    ");
    } else {
      print("[${i + 1}]. ${productList[i].name}    "
          "    ${productList[i].price}    "
          "     ${productList[i].code}    ");
    }
  }
}

void askingAgain() {
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
  int? firstContinuee = int.tryParse(stdin.readLineSync().toString());
  switch (firstContinuee) {
    case 1:
      userNameCheck();
      break;
    case 1:
      print("Bizi sechdiyiniz ucun teshekkurler");
      break;
    default:
      print("Lutfen duzgun sechim edin");
      firstContinue();
  }
}

//When user logged to an account

void userNameCheck() {
  print("Istifadeci adinizi daxil edin");
  userName = stdin.readLineSync().toString().toUpperCase();
  if (userName.isEmpty || userName.startsWith(" ") || userName.endsWith(" ")) {
    print(" " * 10);
    print("Problem Yashandi");
    userNameCheck();
  } else if (userName == "Admin") {
    userPassCheck();
  } else {
    userPassCheck();
  }
}

void userPassCheck() {
  print("Shifrenizi daxil edin");
  String userPass = stdin.readLineSync().toString();
  if (userPass.isEmpty || userPass.contains(" ")) {
    print(" " * 10);
    print("Problem Yashandi");
    userPassCheck();
  } else if (userPass == '4433') {
    adminPanelWelcome();
  } else {
    print(" " * 10);
    userModPanel();
  }
}

void userModPanel() {
  print("Hormetli $userName xosh geldiniz!");
  print(" " * 10);
  print(
      "Ashagidaki stokda movcud olan mehsullardan istediyinizi sece bilersiniz.");
  print(" " * 10);
  productListing();
  print(" " * 10);
  print("Secdiyiniz mehsulu sebete elave etmek ucun mehsulun barkodunu yazin.");
  productChoiceInput();
}

void productChoiceInput() {
  int productChoice = int.parse(stdin.readLineSync().toString());

  for (int i = 0; i < productList.length; i++) {
    if (productList[i].code == productChoice) {
      productIndex = i;
      break;
    }
  }

  print(" " * 10);
  productChoicePanel();
}

void productChoicePanel() {
  print("Hormetli $userName");
  print("Sizin sechdiyiniz mehsul: ${productList[productIndex].name}");
  print(
      "Mehsulun nagd alishda qiymeti ${productList[productIndex].price} Manatdir");
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
        "Ayliq odenish: ${(productList[productIndex].price / birKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print(
        "Toplam odeyeceyiniz mebleg: ${productList[productIndex].price} Azn olacaq.");
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
        "Ayliq odenish: ${(productList[productIndex].price / tamKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print(
        "Toplam odeyeceyiniz mebleg: ${productList[productIndex].price} Azn olacaq.");
    directlyPay();
  } else if (tamKartChoicee == 12) {
    double tamKartNewPrice = productList[productIndex].price +
        (productList[productIndex].price * 25 / 100);
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

void bolKartChoice() {
  int bolKartChoicee = int.parse(stdin.readLineSync().toString());
  if (bolKartChoicee == 3) {
    print(" " * 10);
    print("$bolKartChoicee ayliq hisselere bolunecek.");

    print(
        "Ayliq odenish: ${(productList[productIndex].price / bolKartChoicee).toStringAsFixed(2)} Azn olacaq.");
    print(
        "Toplam odeyeceyiniz mebleg: ${productList[productIndex].price} Azn olacaq.");
    directlyPay();
  } else if (bolKartChoicee == 6) {
    double bolKartNewPrice = productList[productIndex].price + 60;
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
      print(
          "Toplam odeyeceyiniz mebleg ${productList[productIndex].price + 10} Azn'dir.");
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
    print("Sechdiyiniz mehsul: ${productList[productIndex].name}");
    print("Texmini chatdirilma muddeti: [$randomday] ish gunu");
    print("Bizi sechdiyiniz ucun teshekkurler.");
    print(" " * 10);
  }
}
