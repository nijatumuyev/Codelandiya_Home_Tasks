import 'car.dart';
import 'rentable.dart';

void main() {
  Car vehicle1 = Car(
      passengerCapacity: 5,
      brand: "Toyota",
      model: "Supra",
      type: [VehicleType.Coupe]);
  print(" " * 10);
  vehicle1.rent();
  vehicle1.calculateDiscountedPrice(200);
  vehicle1.rent();
  print(" " * 10);
}
