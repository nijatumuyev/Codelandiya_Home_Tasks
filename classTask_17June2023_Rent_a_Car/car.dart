import 'rentable.dart';
import 'vehicle.dart';

class Car extends Vehicle with Discountable {
  int passengerCapacity;
  Car({
    required this.passengerCapacity,
    required super.brand,
    required super.model,
    required super.type,
    required super.price,
  });

  @override
  calculateDiscountedPrice(double percentage) {
    print("Original Price: ${this.price} AZN");
    double newPrice = this.price - (this.price * percentage / 100);
    print("Discounted Price: ${newPrice.toStringAsFixed(2)} AZN");
  }
}
