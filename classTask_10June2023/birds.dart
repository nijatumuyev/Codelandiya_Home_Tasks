import 'animals.dart';

class Birds extends Animals {
  List<String> type;
  double wingsLength;

  Birds(
      {required this.wingsLength,
      required this.type,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
}

class Parrots extends Birds {
  List<String> liveArea;
  Parrots(
      {required this.liveArea,
      required super.wingsLength,
      required super.type,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});
  @override
  void display() {
    super.display();
    print(
        "Type: $type\nWings Length: $wingsLength\nMeal Type: $mealType\nLive Area: $liveArea");
  }
}

class Owls extends Birds {
  List<String> liveArea;
  Owls(
      {required this.liveArea,
      required super.wingsLength,
      required super.type,
      required super.name,
      required super.eyesCount,
      required super.legCount,
      required super.mealType});

  @override
  void display() {
    super.display();
    print(
        "Type: $type\nWings Length: $wingsLength\nMeal Type: $mealType\n Live Area: $liveArea");
  }
}
