import 'main.dart';
import 'users.dart';
import 'admins.dart';
import 'user_panel.dart';
import 'guest_mod.dart';

class Products {
  String name = "";
  double price = 0;
  int code = 0;
  Products({required this.name, required this.price, required this.code});
}

List<Products> productList = [
  Products(name: "IPhone 14 - 256 GB", price: 2000.99, code: 7853712),
  Products(name: "IPhone 14 - 512 GB", price: 2200, code: 5336578),
  Products(name: "IPhone 14 Pro - 256 GB", price: 25.99, code: 9376252),
  Products(name: "IPhone 14 Pro - 512 GB", price: 2850, code: 2497798),
  Products(name: "IPhone 14 Pro Max - 256 GB", price: 310.99, code: 7365297),
  Products(name: "IPhone 14 Pro Max - 512 GB", price: 2, code: 8707774),
];

void productListing() {
  productList
      .sort((Products a, Products b) => a.name.length.compareTo(b.name.length));
  print(" №   Mehsullar                       Qiymeti (Azn)     Barkodu");
  print("-" * 62);
  space();

  for (int i = 0; i < productList.length; i++) {
    String priceString = productList[i].price.toString();
    if (productList[i].name.length < 26 || priceString.length < 7) {
      priceString = priceString + (" " * (7 - priceString.length));
      productList[i].name =
          productList[i].name + (" " * (26 - productList[i].name.length));
      print("[${i + 1}]. ${productList[i].name}    "
          "    ${priceString}    "
          "     ${productList[i].code}    ");
    } else {
      print("[${i + 1}]. ${productList[i].name}    "
          "    ${productList[i].price}    "
          "     ${productList[i].code}    ");
    }
  }
}
