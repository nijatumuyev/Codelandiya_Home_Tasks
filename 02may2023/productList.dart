class Products {
  late String name;
  late int price;
  late int code;
  Products({required this.name, required this.price, required this.code});
}


// void adminPage(){
//   late String namee;
//   late int pricee;
//   late int codee;
//   print("Mehsul adini daxil edin");
//   namee = stdin.readLineSync().toString();
//   print("Mehsulun qiymetini daxil edin");
//   pricee = int.parse(stdin.readLineSync().toString());
//   print("Mehsulun kodunu daxil edin");
//   codee = int.parse(stdin.readLineSync().toString());

//   Products addToList = Products(name: "$namee", price: pricee, code: codee);
//   productList.add(addToList);
//   for (int i = 0; i < productList.length; i++) {
//     if (productList[i].name.length < 26) {
//       productList[i].name =
//           productList[i].name + (" " * (26 - productList[i].name.length));
//       print("${productList[i].name}   "
//           "      ${productList[i].price}  "
//           "          ${productList[i].code}");
//     } else {
//       print("${productList[i].name}    "
//           "     ${productList[i].price}      "
//           "      ${productList[i].code}");
//     }
//   }
// }
