import 'main.dart';
import 'dart:io';
import 'users.dart';

String newUsersName = "";
String newUsersSurname = "";
int? newUserBirthDay = 0;
int? newUserBirthMonth = 0;
int? newUserBirthYear = 0;
String newUserUsername = "";
String newUserUserPass = "";

void registration() {
  //! New User's Name Input
  space();
  print("Adinizi daxil edin");
  space();

  while (true) {
    newUsersName = stdin.readLineSync().toString().toUpperCase();
    if (newUsersName.contains(numDetector) ||
        newUsersName.isEmpty ||
        newUsersName.startsWith(" ") ||
        newUsersName.endsWith(" ")) {
      space();
      print("Adinizi duzgun daxil edin");
      space();
    } else {
      break;
    }
  }

  //! New Users's Surname Input
  space();
  print("Soyadinizi daxil edin");
  space();

  while (true) {
    newUsersSurname = stdin.readLineSync().toString().toUpperCase();
    if (newUsersSurname.contains(numDetector) ||
        newUsersSurname.isEmpty ||
        newUsersSurname.startsWith(" ") ||
        newUsersSurname.endsWith(" ")) {
      space();
      print("Soyadinizi duzgun daxil edin");
      space();
    } else {
      break;
    }
  }

  //! New Users's BirthDay Input
  space();
  print("Dogum gununuzu daxil edin");
  space();

  while (true) {
    newUserBirthDay = int.tryParse(stdin.readLineSync().toString());
    if (newUserBirthDay.toString().isEmpty ||
        newUserBirthDay.toString().length > 2 ||
        newUserBirthDay! < 1 ||
        newUserBirthDay! > 31) {
      space();
      print("Dogum gununuzu duzgun daxil edin");
      space();
    } else {
      break;
    }
  }

  //! New Users's BirthMonth Input
  space();
  print("Dogum ayinizi daxil edin");
  print("Yanvar - 01 | Dekabr - 12");
  space();

  while (true) {
    newUserBirthMonth = int.tryParse(stdin.readLineSync().toString());
    if (newUserBirthMonth.toString().isEmpty ||
        newUserBirthMonth.toString().length > 2 ||
        newUserBirthMonth! < 1 ||
        newUserBirthMonth! > 12) {
      space();
      print("Dogum ayinizi duzgun daxil edin");
      print("Yanvar - 01 | Dekabr - 12");
      space();
    } else {
      break;
    }
  }

  //! New Users's BirtYear Input
  space();
  print("Dogum ilinizi daxil edin");
  space();

  while (true) {
    newUserBirthYear = int.tryParse(stdin.readLineSync().toString());
    if (newUserBirthYear.toString().isEmpty ||
        newUserBirthYear.toString().length != 4 ||
        newUserBirthYear! < 1873 ||
        newUserBirthYear! > 2005) {
      space();
      print("Dogum ilinizi duzgun daxil edin");
      space();
    } else {
      break;
    }
  }

  //! New Users's username Input
  space();
  print("Istifadechi adi (username) teyin edin");
  space();

  while (true) {
    newUserUsername = stdin.readLineSync().toString();
    if (newUserUsername.isEmpty ||
        newUserUsername.startsWith(" ") ||
        newUserUsername.endsWith(" ") ||
        newUserUsername.contains(" ")) {
      space();
      print("Istifadechi adini duzgun daxil edin");
      space();
    } else {
      break;
    }
  }

  //! New Users's password Input
  space();
  print("Shifre teyin edin");
  space();

  while (true) {
    newUserUserPass = stdin.readLineSync().toString();
    if (newUserUserPass.isEmpty ||
        newUserUserPass.startsWith(" ") ||
        newUserUserPass.endsWith(" ") ||
        newUserUserPass.contains(" ")) {
      space();
      print("Shifreni duzgun daxil edin");
      space();
    } else {
      Users addUserToList = Users(
          name: "$newUsersName",
          surname: "$newUsersSurname",
          username: "$newUserUsername",
          userpass: "$newUserUserPass",
          userBirthDay: newUserBirthDay,
          userBirthMonth: newUserBirthMonth,
          userBirthYear: newUserBirthYear);
      userList.add(addUserToList);
      space();
      print("Qeydiyyatiniz ugurla tamamlandi.");
      print("Esas sehifeye yonlendirilirsiniz . . .");
      main();
      break;
    }
  }
}
