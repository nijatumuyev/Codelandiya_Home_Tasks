import 'animals.dart';

void main() {
  Birds animalOne = Birds(
      wingsLength: 13,
      type: "Parrots",
      name: "Psittaculidae",
      eyesCount: 2,
      legCount: 2);
  Reptiles animalTwo = Reptiles(
      type: "Reptiles",
      isDangerous: false,
      name: "Tortoise",
      eyesCount: 2,
      legCount: 4);

  Mammals animalThree = Mammals(
      type: "Mammals",
      age: 130,
      name: "African Elephant",
      eyesCount: 2,
      legCount: 4);

  animalOne.display();
  print(" " * 10);
  animalOne.readyToFly();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  animalTwo.display();
  print(" " * 10);
  animalTwo.readyToRun();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  animalThree.display();
  print(" " * 10);
  animalThree.readyToBreed();
}
