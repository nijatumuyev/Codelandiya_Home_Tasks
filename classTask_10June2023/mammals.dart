import 'animals.dart';

class Mammals extends Animals {
  List<String> type;
  int age;
  Mammals(
      {required this.type,
      required this.age,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
}

class Dogs extends Mammals {
  List<String> liveArea;
  Dogs(
      {required this.liveArea,
      required super.type,
      required super.age,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});

  @override
  void display() {
    super.display();
    print(
        "Type: $type\nAge: $age\nMeal Type: $mealType\n Live Area: $liveArea");
  }
}

class Elephants extends Mammals {
  List<String> liveArea;
  Elephants(
      {required this.liveArea,
      required super.type,
      required super.age,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
  @override
  void display() {
    super.display();
    print(
        "Type: $type\nAge: $age\nMeal Type: $mealType\nLive Area: $liveArea");
  }
}
