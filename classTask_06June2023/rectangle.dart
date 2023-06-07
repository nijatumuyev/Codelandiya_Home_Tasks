class Rectangle {
  final double x1;
  final double x2;

  Rectangle({required this.x1, required this.x2});

  double perimeter() {
    double perimeterCount = (this.x1 + this.x2) * 2;
    return perimeterCount;
  }

  double area() {
    double areaCount = this.x1 * this.x2;
    return areaCount;
  }
}
