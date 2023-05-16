import 'products.dart';
import 'user_panel.dart';

class Cart {
  String selectedProductName = "";
  double selectedProductPrice = 0;
  int selectedProductCode = 0;
  Cart(
      {required this.selectedProductName,
      required this.selectedProductPrice,
      required this.selectedProductCode});
}

List<Cart> cartList = [];

void addToCart() {
  Cart addElemetsToCart = Cart(
      selectedProductName: productList[productIndex].name,
      selectedProductPrice: productList[productIndex].price,
      selectedProductCode: productList[productIndex].code);
  cartList.add(addElemetsToCart);
}
