class Animals {
  String name;
  int eyesCount;
  int legCount;
  List<String> mealType;
  Animals({
    required this.mealType,
    required this.name,
    required this.eyesCount,
    required this.legCount,
  });

  void display() {
    print('''
Name: $name
Eyes: $eyesCount
Legs: $legCount''');
  }
}
