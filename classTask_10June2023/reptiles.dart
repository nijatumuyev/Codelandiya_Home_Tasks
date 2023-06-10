import 'animals.dart';

class Reptiles extends Animals {
  List<String> type;
  bool isDangerous;
  Reptiles(
      {required this.type,
      required this.isDangerous,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
}

class Turtles extends Reptiles {
  List<String> liveArea;
  Turtles(
      {required this.liveArea,
      required super.type,
      required super.isDangerous,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
  @override
  void display() {
    super.display();
    print(
        "Type: $type\nDangerous: $isDangerous\nMeal Type: $mealType\nLive Area: $liveArea");
  }
}

class Crocodiles extends Reptiles {
  List<String> liveArea;
  Crocodiles(
      {required this.liveArea,
      required super.type,
      required super.isDangerous,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
  @override
  void display() {
    super.display();
    print(
        "Type: $type\nDangerous: $isDangerous\nMeal Type: $mealType\n Live Area: $liveArea");
  }
}
