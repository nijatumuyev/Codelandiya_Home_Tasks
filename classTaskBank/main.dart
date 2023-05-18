import 'dart:io';

void main() {
  Map<String, List<int>> customers = {
    'John Snow': [500, 200],
    'Elliot Anderson': [150, 900],
  };

  print("Adinizi ve Soyadinizi daxil edin");
  String name = stdin.readLineSync().toString();
  customers.forEach((key, value) {
    if (name == key) {
      print("Hormetli $key");
      for (int i = 0; i < customers.length; i++) {
        if (value[i] >= 200) {
          print(
              "Kartda ${value[i]} mebleg olduguna gore Bankimiz vesaitin uzerine 10 azn elave etdi.]");
          print("Kartdaki umumi mebleg ${value[i] + 10}");
        } else if (value[i] < 200) {
          print(
              "Kartda ${value[i]} mebleg olduguna gore hech bir faiz hesablanmad");
        }
      }
    }
  });
}
