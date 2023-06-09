import 'cars.dart';

void main() {
  MiniCars vehicleOne = MiniCars(
    modelName: "FX35",
    companyName: "Infinity",
    isNew: false,
    passengers: 4,
    engine: 3.5,
    mileAge: 85000,
    fuelType: ["Petrol"],
    carType: ["Personal"],
    usingType: ["Daily", "Taxi"],
  );

  Bus vehicleTwo = Bus(
      busType: ["SchoolBus"],
      isLongDistance: false,
      engine: 4,
      modelName: "AA School",
      companyName: "Ford",
      isNew: true,
      mileAge: 0,
      fuelType: ["Gasoline", "Petrol"],
      passengers: 18);
  print(" " * 10);
  vehicleOne.display();
  print(
      "Fuel Consumption: ${vehicleOne.fuelConsumption(32, 315.7).toStringAsFixed(2)} Liters per 100 km ");
  print(" " * 10);
  print("-" * 20);
  print(" " * 10);
  vehicleTwo.display();
  print("How many students per day: ${vehicleTwo.studentsPerDay(2, 3)}");
  print(" " * 10);
}
