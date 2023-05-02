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

void main() {
  print("Qonaq girishi uchun [1] daxil edin.\n"
      "Movcud hesabiniz varsa [2] daxil edin.");
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
  String userName = stdin.readLineSync().toString().toUpperCase();
  if (userName.isEmpty || userName.contains(" ")) {
    print("Istifadechi adi bosh ola bilmez");
    userNameCheck();
  } else {
    userPassCheck(userName);
  }
}

void userPassCheck(userName) {
  print("Shifrenizi daxil edin");
  String userPass = stdin.readLineSync().toString();
  if (userPass.isEmpty || userPass.contains(" ")) {
    print("Shifre bosh ola bilmez");
    userPassCheck(userName);
  } else {
    print(" " * 10);
    userNameMethod(userName);
    userModPanel();
  }
}

void userNameMethod(userName) {
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
  print(" " * 10);
  productChoicePanel(productChoice);
}

void productChoicePanel(productChoice) {
  if (productChoice == 7852 ||
      productChoice == 5336 ||
      productChoice == 9252 ||
      productChoice == 2498 ||
      productChoice == 6297 ||
      productChoice == 8774) {
    for (int i = 0; i < productList.length; i++) {
      if (productChoice == productList[i].code) {
        print("Sizin sechdiyiniz mehsul: ${productList[i].name}");
        print("Mehsulun nagd alishda qiymeti ${productList[i].price} Manatdir");
        print(" " * 10);
        print("Alisverisi tamamlamaq uhun [1] daxil edin");
        print("Mehsul sechimine davam etmek uhun [2] daxil edin");
        print("Cixis etmek uhun [3] daxil edin");
        int seconddContinue = int.parse(stdin.readLineSync().toString());
        switch (seconddContinue) {
          case 1:
            cashOrCard();
            break;
          case 2:
            userModPanel();
            break;
          case 3:
            print("Bizi sechdiyiniz ucun teshekkurler");
            break;
          default:
            print("Lutfen duzgun sechim edin");
        }
      }
    }
  } else {
    productChoiceError();
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
  print("Kartin uzerindeki 16 reqemli kodu daxil edin");
  cardNumber();
}

void cardNumber() {
  String cardNumberr = stdin.readLineSync().toString();
  if (cardNumberr.length != 16 ||
      cardNumberr.length != 16 ||
      cardNumberr.contains("a") ||
      cardNumberr.contains("b") ||
      cardNumberr.contains("c") ||
      cardNumberr.contains("d") ||
      cardNumberr.contains("e") ||
      cardNumberr.contains("f") ||
      cardNumberr.contains("g") ||
      cardNumberr.contains("h") ||
      cardNumberr.contains("j") ||
      cardNumberr.contains("k") ||
      cardNumberr.contains("l") ||
      cardNumberr.contains("p") ||
      cardNumberr.contains("t") ||
      cardNumberr.contains("r") ||
      cardNumberr.contains("n") ||
      cardNumberr.contains("z") ||
      cardNumberr.contains("v") ||
      cardNumberr.contains("d") ||
      cardNumberr.contains("l") ||
      cardNumberr.contains("q")) {
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
  int expiryDateMonthhh = int.parse(expiryDateMonthh);

  if (expiryDateMonthh.length != 2 ||
      expiryDateMonthh.contains("a") ||
      expiryDateMonthh.contains("b") ||
      expiryDateMonthh.contains("c") ||
      expiryDateMonthh.contains("d") ||
      expiryDateMonthh.contains("e") ||
      expiryDateMonthh.contains("f") ||
      expiryDateMonthh.contains("g") ||
      expiryDateMonthh.contains("h") ||
      expiryDateMonthh.contains("j") ||
      expiryDateMonthh.contains("k") ||
      expiryDateMonthh.contains("l") ||
      expiryDateMonthh.contains("p") ||
      expiryDateMonthh.contains("t") ||
      expiryDateMonthh.contains("r") ||
      expiryDateMonthh.contains("n") ||
      expiryDateMonthh.contains("z") ||
      expiryDateMonthh.contains("v") ||
      expiryDateMonthh.contains("d") ||
      expiryDateMonthh.contains("l") ||
      expiryDateMonthh.contains("q") ||
      expiryDateMonthhh > 12) {
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
  int expiryDateYearr = int.parse(expiryDateYear);
  if (expiryDateYear.length != 4 ||
      expiryDateYearr > 2029 ||
      expiryDateYearr < 2017 ||
      expiryDateYear.contains("a") ||
      expiryDateYear.contains("b") ||
      expiryDateYear.contains("c") ||
      expiryDateYear.contains("d") ||
      expiryDateYear.contains("e") ||
      expiryDateYear.contains("f") ||
      expiryDateYear.contains("g") ||
      expiryDateYear.contains("h") ||
      expiryDateYear.contains("j") ||
      expiryDateYear.contains("k") ||
      expiryDateYear.contains("l") ||
      expiryDateYear.contains("p") ||
      expiryDateYear.contains("t") ||
      expiryDateYear.contains("r") ||
      expiryDateYear.contains("n") ||
      expiryDateYear.contains("z") ||
      expiryDateYear.contains("v") ||
      expiryDateYear.contains("d") ||
      expiryDateYear.contains("l") ||
      expiryDateYear.contains("q")) {
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
  int cardCvcInputt = int.parse(cardCvcInput);
  if (cardCvcInput.length != 3 ||
      cardCvcInputt > 999 ||
      cardCvcInputt < 001 ||
      cardCvcInput.contains("a") ||
      cardCvcInput.contains("b") ||
      cardCvcInput.contains("c") ||
      cardCvcInput.contains("d") ||
      cardCvcInput.contains("e") ||
      cardCvcInput.contains("f") ||
      cardCvcInput.contains("g") ||
      cardCvcInput.contains("h") ||
      cardCvcInput.contains("j") ||
      cardCvcInput.contains("k") ||
      cardCvcInput.contains("l") ||
      cardCvcInput.contains("p") ||
      cardCvcInput.contains("t") ||
      cardCvcInput.contains("r") ||
      cardCvcInput.contains("n") ||
      cardCvcInput.contains("z") ||
      cardCvcInput.contains("v") ||
      cardCvcInput.contains("d") ||
      cardCvcInput.contains("l") ||
      cardCvcInput.contains("q")) {
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
}

void tamKart() {
  print(" " * 10);
  print("Tamkart ile 3, 6 və 12 ayliq odenish var.");
  print("12 aylıq sechildikde  mehsulun qiymetinin üzerine 25% elave olunur.");
}

void bolKart() {
  print(" " * 10);
  print("Bolkart ile  3 və 6 ayliq odenishler var.");
  print("6 ayliq sechildikde her ay uchun 10 azn elave olunur.");
}

void bringOrDeliveryInput() {
  int bringOrDeliveryInputt = int.parse(stdin.readLineSync().toString());
  switch (bringOrDeliveryInputt) {
    case 1:
      print(" " * 10);
      print(
          "Diqqet catdirilma zamani mehsulun qiymetine 10 Azn elave olunacaqdir.");
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
    print(
        "Sechdiyiniz mehsul $randomday ish gunu erzinde qeyd etdiyiniz unvana catdirilacaqdir.");
    print("Bizi sechdiyiniz ucun teshekkurler.");
    print(" " * 10);
  }
}
