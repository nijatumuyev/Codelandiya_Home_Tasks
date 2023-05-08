import 'dart:convert';
import 'dart:io';
import 'dart:math';

List<String> alphabet = [];
List<int> numGen = List.generate(100, (index) => index++);
List<int> numList = [];
List<String> passList = [];
void main() {
  for (int i = 65; i < 91; i++) {
    alphabet.add(String.fromCharCode(i));
  }
  for (int i = 97; i < 123; i++) {
    alphabet.add(String.fromCharCode(i));
  }
  alphabet.shuffle();

  for (int i = 10; i < 100; i++) {
    numList.add(numGen[i]);
  }
  numList.shuffle;
  print(" " * 10);
  print("Hansi seviyyede shifre duzeldilsin?");
  print(" " * 10);
  print("[1] Zeif (7 simvol)");
  print("[2] Orta (10 simvol)");
  print("[3] Guclu (13 simvol)");
  print(" " * 10);
  selection();
}

void selection() {
  numGen.shuffle();
  alphabet.shuffle();
  int? userchoice = int.tryParse(stdin.readLineSync().toString());
  switch (userchoice) {
    case 1:
      easypassListCreate();
      String easyPass = passList.join();
      String easyPassencrypted = base64UrlEncode(utf8.encode(easyPass));
      print(" " * 10);
      print("Shifreniz: [$easyPass]");
      print("Enkript versiyasi: [$easyPassencrypted]");

      main();
      break;
    case 2:
      mediumpassListCreate();
      String mediumPass = passList.join();
      String mediumPassencrypted = base64UrlEncode(utf8.encode(mediumPass));
      print(" " * 10);
      print("Shifreniz: [$mediumPass]");
      print("Enkript versiyasi: [$mediumPassencrypted]");
      main();
      break;
    case 3:
      hardpassListCreate();
      String hardPass = passList.join();
      String hardPassencrypted = base64UrlEncode(utf8.encode(hardPass));
      print("Shifreniz: [$hardPass]");
      print("Enkript versiyasi: [$hardPassencrypted]");
      print(" " * 10);
      main();
      break;
    default:
      print(" " * 10);
      print("Lutfen Duzgun Sechim Edin!");
      print(" " * 10);
      selection();
  }
}

void easypassListCreate() {
  passList = [];
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.shuffle();
}

void mediumpassListCreate() {
  passList = [];
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.shuffle();
}

void hardpassListCreate() {
  passList = [];
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(alphabet[Random().nextInt(52)]);
  passList.add(numList[Random().nextInt(89)].toString());
  passList.shuffle();
}
