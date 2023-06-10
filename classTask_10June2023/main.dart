import 'birds.dart';
import 'mammals.dart';
import 'reptiles.dart';

void main() {
  Parrots birdOne = Parrots(
      wingsLength: 13,
      type: ["Parrots"],
      name: "Psittaculidae",
      eyesCount: 2,
      legCount: 2,
      mealType: ["Weed"],
      liveArea: ["Iraq", "Kuwait", "Saudi Arabia", "Bahrain", "Qatar"]);
  Owls birdTwo = Owls(
      liveArea: ["North Pole"],
      wingsLength: 35,
      type: ["Owls"],
      name: "Snowy owl",
      eyesCount: 2,
      legCount: 2,
      mealType: ["Meat"]);
  Crocodiles reptileOne = Crocodiles(
      type: ["Crocodiles"],
      isDangerous: true,
      name: "Orinoco crocodile",
      eyesCount: 2,
      legCount: 4,
      liveArea: ["Philippines"],
      mealType: ["meat"]);

  Turtles reptileTwo = Turtles(
      type: ["Turtles"],
      name: "Ninja Turtles",
      eyesCount: 2,
      legCount: 4,
      mealType: ["weed"],
      liveArea: ["North America", "South Asia"],
      isDangerous: false);

  Elephants mammalOne = Elephants(
    liveArea: ["South Africa"],
    age: 130,
    name: "African Elephant",
    eyesCount: 2,
    legCount: 4,
    mealType: ["weed"],
    type: ["Elephants"],
  );

  Dogs mammalTwo = Dogs(
    liveArea: ["Alaska"],
    age: 9,
    name: "Husky",
    eyesCount: 2,
    legCount: 4,
    mealType: ["meat"],
    type: ["Dogs"],
  );

  print(" " * 10);
  birdOne.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  birdTwo.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  reptileOne.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  reptileTwo.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  mammalOne.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  mammalTwo.display();
}
