import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Reqemi daxil edin");
  print(" " * 10);
  int input = int.parse(stdin.readLineSync().toString());
  for (int i = 1; i <= input; i++) {
    if (input % i == 0) {
      numbers.add(i);
    }
  }
  print(" " * 10);
  print(numbers);
  main();
}
