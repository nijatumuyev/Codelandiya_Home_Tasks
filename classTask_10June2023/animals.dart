class Animals {
  String name;
  int eyesCount;
  int legCount;
  Animals({
    required this.name,
    required this.eyesCount,
    required this.legCount,
  });

  void display() {
    print('''Name: $name
            Eyes: $eyesCount
            Legs: $legCount''');
  }
}

class Birds extends Animals {
  String type;
  double wingsLength;

  Birds(
      {required this.wingsLength,
      required this.type,
      required super.name,
      required super.eyesCount,
      required super.legCount});

  @override
  void display() {
    super.display();
    print("Type: $type\nWings Length: $wingsLength");
  }

  void readyToFly() {
    print("The $name is ready to fly.");
  }
}

class Reptiles extends Animals {
  String type;
  bool isDangerous;
  Reptiles(
      {required this.type,
      required this.isDangerous,
      required super.name,
      required super.eyesCount,
      required super.legCount});

  void readyToRun() {
    print("The $name is ready to run.");
  }
  @override
  void display() {
    super.display();
    print("Type: $type\nDangerous: $isDangerous");
  }
}

class Mammals extends Animals {
  String type;
  int age;
  Mammals(
      {required this.type,
      required this.age,
      required super.name,
      required super.eyesCount,
      required super.legCount});

  void readyToBreed() {
    print("The $name is ready to breed.");
  }
  @override
  void display() {
    super.display();
    print("Type: $type\nAge: $age");
  }
}
