abstract class Rentable {
  rent();
  returnVehicle();
}

enum VehicleType { Commercial, Coupe, Hatchback, Sedan, Sport, SUV, Motorcycle }

mixin Discountable {
  calculateDiscountedPrice(double percentage);
}
