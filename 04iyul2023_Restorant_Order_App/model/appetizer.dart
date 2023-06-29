import 'food_item.dart';

class Appetizer extends FoodItem {
  String desciption;
  Appetizer({
    required this.desciption, required super.name, required super.price,
  });
}
