class Vehicles {
  String companyName;
  String modelName;
  bool isNew;
  double engine;
  int mileAge;
  int passengers;
  List<String> fuelType;
  Vehicles(
      {required this.engine,
      required this.modelName,
      required this.companyName,
      required this.isNew,
      required this.mileAge,
      required this.fuelType,
      required this.passengers});
  void display() {
    print('''
Company Name: $companyName
Model Name: $modelName
Is New: $isNew
Passengers: $passengers
Engine: $engine L
Mileage: $mileAge km
Fuel Type: $fuelType''');
  }
}

class MiniCars extends Vehicles {
  List<String> carType;
  List<String> usingType;
  MiniCars({
    required this.carType,
    required this.usingType,
    required super.engine,
    required super.modelName,
    required super.companyName,
    required super.isNew,
    required super.mileAge,
    required super.fuelType,
    required super.passengers,
  });

  @override
  void display() {
    super.display();
    print("Car Type: $carType\nUsing Type: $usingType");
  }

  double fuelConsumption(double fuelCount, double kmCount) =>
      (fuelCount / kmCount) * 100;
}

class Bus extends Vehicles {
  List<String> busType;
  bool isLongDistance;
  Bus({
    required this.busType,
    required this.isLongDistance,
    required super.engine,
    required super.modelName,
    required super.companyName,
    required super.isNew,
    required super.mileAge,
    required super.fuelType,
    required super.passengers,
  });
  @override
  void display() {
    super.display();
    print("Bus Type: $busType\nLong Distance Use: $isLongDistance");
  }

  int studentsPerDay(int shiftCount, int multipleCount) =>
      multipleCount * shiftCount * 18;
}
