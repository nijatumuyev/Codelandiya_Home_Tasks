import 'rentable.dart';

class Vehicle implements Rentable {
  String brand;
  String model;
  List<VehicleType> type;
  Vehicle({
    required this.brand,
    required this.model,
    required this.type,
  });

  @override
  rent() {
    print("Vehicle Rented: ${this.brand} ${this.model}");
  }

  @override
  returnVehicle() {
    print("Vehicle Returned: ${this.brand} ${this.model}");
  }
}
