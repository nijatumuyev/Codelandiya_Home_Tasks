import 'dart:io';
import 'dart:math';

Map<String, String> conditions = {
  "Rock": "Scissors",
  "Paper": "Rock",
  "Scissors": "Paper"
};
List<String> variants = ["Paper", "Scissors", "Rock"];
int userScore = 0;
int compScore = 0;
String userChoice = "";
String userVariant = "";
String compVariant = "";
void main() {
  print("Sechim edin");
  print("[1] Kagiz");
  print("[2] Qaychi");
  print("[3] Dash");
  print("[4] Hesabi Sifirla");
  print("-" * 25);
  selection();
}

void selection() {
  print(" " * 3);
  userChoice = stdin.readLineSync().toString();
  compVariant = "${variants[Random().nextInt(3)]}";
  print(" " * 3);
  errorChecking();
}

void errorChecking() {
  if (userChoice == "1" || userChoice == "2" || userChoice == "3") {
    afterSelection();
  } else if (userChoice == "4") {
    clear();
  } else {
    print("Duzgun sechim edin");
    selection();
  }
}

void afterSelection() {
  int userChoice2 = int.parse(userChoice);
  userVariant = "${variants[userChoice2 - 1]}";
  print("-" * 25);
  print("Sizin seciminiz [$userVariant]");
  print("Kompyuterin sechimi [$compVariant]");
  game();
}

void game() {
  print(" " * 3);
  print("-" * 25);
  conditions.forEach((key, value) {
    if (userVariant == compVariant) {
      print("Hec-Hece Qaldiniz");
      result();
      main();
    } else if (userVariant == key && compVariant == value) {
      userScore++;
      print("Siz qalib geldiniz");
      result();
      main();
    } else if (compVariant == key && userVariant == value) {
      compScore++;
      print("Kompyuter qalib geldi");
      result();
      main();
    }
  });
}

void result() {
  print(" " * 3);
  print("Umumi Hesab");
  print("Kompyuter [$compScore] -- [$userScore] Siz");
  print("-" * 25);
  print(" " * 3);
}

void clear() {
  userScore = 0;
  compScore = 0;
  print("-" * 25);
  print("Hesablar Sifirlandi");
  print("-" * 25);
  main();
}
