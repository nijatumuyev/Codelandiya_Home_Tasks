import 'dart:io';
import 'dart:math';

Map<String, String> conditions = {
  "Rock": "Scissors",
  "Paper": "Rock",
  "Scissors": "Paper"
};

int userScore = 0;
int compScore = 0;
String userChoice = "";
String compChoice = "";

void main() {
  print("Sechim edin");
  print("[1] Kagiz");
  print("[2] Qaychi");
  print("[3] Dash");
  print("[4] Hesabi Sifirla");
  game();
}

void game() {
  print(" " * 3);
  userChoice = stdin.readLineSync().toString();
  compChoice = (Random().nextInt(3) + 1).toString();
  print(" " * 3);
  print("-" * 25);
  switch (userChoice) {
    case "1":
      userChoice = "Paper";
      print("Sizin seciminiz [Kagiz]");
      gameStart();
      break;
    case "2":
      userChoice = "Scissors";
      print("Sizin seciminiz [Qaychi]");
      gameStart();
      break;
    case "3":
      userChoice = "Rock";
      print("Sizin seciminiz [Dash]");
      gameStart();
      break;
    case "4":
      userScore = 0;
      compScore = 0;
      print("Hesablar Sifirlandi");
      main();
      break;
    default:
      print("Lutfen Duzgun Sechim edin");
      game();
  }

  switch (compChoice) {
    case "1":
      compChoice = "Paper";
      print("Kompyuterin Secimi [Kagiz]");
      gameStart();
      break;
    case "2":
      compChoice = "Scissors";
      print("Kompyuterin Secimi [Qaychi]");
      gameStart();
      break;
    case "3":
      compChoice = "Rock";
      print("Kompyuterin Secimi [Dash]");
      gameStart();
      break;
    default:
      print("Lutfen Duzgun Sechim edin");
      game();
  }
}

void gameStart() {
  conditions.forEach((key, value) {
    if (userChoice == compChoice) {
      print("Hec-Hece Qaldiniz");
      result();
      main();
    } else if (userChoice == key && compChoice == value) {
      userScore++;
      print("Siz qalib geldiniz");
      result();
      main();
    } else if (compChoice == key && userChoice == value) {
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
