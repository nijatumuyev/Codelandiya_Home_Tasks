import 'dart:io';
import 'main.dart';
import 'users.dart';
import 'products.dart';

String newUsersName = "";
String newUsersSurname = "";
int newUserBirthDay = 0;
int newUserBirthMonth = 0;
int newUserBirthYear = 0;
String newUserUsername = "";
String newUserUserPass = "";

void reg1() {
  space();
  print("Adinizi daxil edin");
  space();
  usersNameRegCheck();
}

void usersNameRegCheck() {
  String newUsersName = stdin.readLineSync().toString().toUpperCase();
  if (newUsersName.contains(numDetector) ||
      newUsersName.isEmpty ||
      newUsersName.startsWith(" ") ||
      newUsersName.endsWith(" ")) {
    space();
    print("Adinizi duzgun daxil edin");
    space();
    usersNameRegCheck();
  } else {
    space();
    reg2();
  }
}

void reg2() {
  print("Soyadinizi daxil edin");
  space();
  usersSurnameRegCheck();
}

void usersSurnameRegCheck() {
  String newUsersSurname = stdin.readLineSync().toString().toUpperCase();
  if (newUsersSurname.contains(numDetector) ||
      newUsersSurname.isEmpty ||
      newUsersSurname.startsWith(" ") ||
      newUsersSurname.endsWith(" ")) {
    space();
    print("Soyadinizi duzgun daxil edin");
    space();
    usersSurnameRegCheck();
  } else {
    space();
    reg3();
  }
}

void reg3() {
  print("Dogum gununuzu daxil edin");
  space();
  userBirthDayRegCheck();
}

void userBirthDayRegCheck() {
  int? newUserBirthDay = int.tryParse(stdin.readLineSync().toString());
  if (newUserBirthDay.toString().isEmpty ||
      newUserBirthDay.toString().length > 2 ||
      newUserBirthDay! < 1 ||
      newUserBirthDay > 31) {
    space();
    print("Dogum gununuzu duzgun daxil edin");
    space();
    userBirthDayRegCheck();
  } else {
    space();
    reg4();
  }
}

void reg4() {
  print("Dogum ayinizi daxil edin");
  print("Yanvar - 01 | Dekabr - 12");
  space();
  userBirthMonthRegCheck();
}

void userBirthMonthRegCheck() {
  int? newUserBirthMonth = int.tryParse(stdin.readLineSync().toString());
  if (newUserBirthMonth.toString().isEmpty ||
      newUserBirthMonth.toString().length > 2 ||
      newUserBirthMonth! < 1 ||
      newUserBirthMonth > 12) {
    space();
    print("Dogum ayinizi duzgun daxil edin");
    print("Yanvar - 01 | Dekabr - 12");
    space();
    userBirthMonthRegCheck();
  } else {
    space();
    reg5();
  }
}

void reg5() {
  print("Dogum ilinizi daxil edin");
  space();
  userBirthYearRegCheck();
}

void userBirthYearRegCheck() {
  int? newUserBirthYear = int.tryParse(stdin.readLineSync().toString());
  if (newUserBirthYear.toString().isEmpty ||
      newUserBirthYear.toString().length != 4 ||
      newUserBirthYear! < 1873 ||
      newUserBirthYear > 2005) {
    space();
    print("Dogum ilinizi duzgun daxil edin");
    space();
    userBirthYearRegCheck();
  } else {
    space();
    reg6();
  }
}

void reg6() {
  print("Istifadechi adi (username) teyin edin");
  space();
  usernameRegCheck();
}

void usernameRegCheck() {
  String newUserUsername = stdin.readLineSync().toString().toUpperCase();
  if (newUserUsername.isEmpty ||
      newUserUsername.startsWith(" ") ||
      newUserUsername.endsWith(" ") ||
      newUserUsername.contains(" ")) {
    space();
    print("Istifadechi adini duzgun daxil edin");
    space();
    usernameRegCheck();
  } else {
    space();
    reg7();
  }
}

void reg7() {
  print("Shifre teyin edin");
  space();
  userPassRegCheck();
}

void userPassRegCheck() {
  String newUserUserPass = stdin.readLineSync().toString().toUpperCase();
  if (newUserUserPass.isEmpty ||
      newUserUserPass.startsWith(" ") ||
      newUserUserPass.endsWith(" ") ||
      newUserUserPass.contains(" ")) {
    space();
    print("Shifreni duzgun daxil edin");
    space();
    userPassRegCheck();
  } else {
    Users addUserToList = Users(
        name: newUsersName,
        surname: newUsersSurname,
        username: newUserUsername,
        userpass: newUserUserPass,
        userBirthDay: newUserBirthDay,
        userBirthMonth: newUserBirthMonth,
        userBirthYear: newUserBirthYear);
    space();
    print("Qeydiyyatiniz ugurla tamamlandi.");
    print("Esas sehifeye yonlendirilirsiniz . . .");
    main();
  }
}
