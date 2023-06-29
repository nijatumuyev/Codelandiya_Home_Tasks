import 'food_item.dart';

class Dessert extends FoodItem {
  bool isSweet;
  Dessert({
    required this.isSweet, required super.name, required super.price,
  });
}
