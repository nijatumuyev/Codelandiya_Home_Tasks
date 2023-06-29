import 'food_item.dart';

class OrderingSystem<T extends FoodItem> {
  List<T> order = [];
  OrderingSystem();

  addItem(T item) {
    order.add(item);
  }

  removeItem(T item) {}
  calculateTotalCost() {
    double totalPrice = 0;
    for (T element in order) {
      totalPrice += element.price;
    }
    print("Total cost of the order: \$${totalPrice.toStringAsFixed(2)}");
  }
}
