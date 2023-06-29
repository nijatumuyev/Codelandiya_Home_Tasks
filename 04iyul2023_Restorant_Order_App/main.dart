import 'model/appetizer.dart';
import 'model/dessert.dart';
import 'model/main_course.dart';
import 'model/ordering_system.dart';

void main(List<String> args) {
  Appetizer appetizerOne = Appetizer(
      desciption: "The First Appetizer Description",
      name: "Appetizer One",
      price: 15.50);
  MainCourse mainOne = MainCourse(
      ingredients: ["Meal", "Sugar", "Water", "Oil"],
      name: "Main One",
      price: 22.99);
  Dessert dessertOne =
      Dessert(isSweet: true, name: "Dessert One", price: 13.50);
  OrderingSystem myOrder = OrderingSystem();
  myOrder.addItem(appetizerOne);
  myOrder.addItem(mainOne);
  myOrder.addItem(dessertOne);
  myOrder.removeItem(appetizerOne);
  print("*" * 31);
  myOrder.calculateTotalCost();
  print("*" * 31);
}
