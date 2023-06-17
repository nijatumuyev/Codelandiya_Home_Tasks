import 'rentable.dart';
import 'vehicle.dart';

class Car extends Vehicle with Discountable {
  int passengerCapacity;
  Car({
    required this.passengerCapacity,
    required super.brand,
    required super.model,
    required super.type,
  });

  @override
  calculateDiscountedPrice(double price) {
    print("Original Price: $price AZN");
    double newPrice = price - (price * 25 / 100);
    print("Discounted Price: ${newPrice.toStringAsFixed(2)} AZN");
  }
}
