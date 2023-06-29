import 'food_item.dart';

class MainCourse extends FoodItem {
  List<String> ingredients;
  MainCourse({
    required this.ingredients, required super.name, required super.price,
  });
}
