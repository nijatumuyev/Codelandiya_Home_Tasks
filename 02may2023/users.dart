import 'dart:io';
import 'main.dart';
import 'admins.dart';
import 'user_panel.dart';

int logIn = -1;
int admLogIn = -1;

class Users {
  String name = "";
  String surname = "";
  String username = "";
  String userpass = "";
  int? userBirthDay = 0;
  int? userBirthMonth = 0;
  int? userBirthYear = 0;
  Users(
      {required this.name,
      required this.surname,
      required this.username,
      required this.userpass,
      required this.userBirthDay,
      required this.userBirthMonth,
      required this.userBirthYear});
}

List<Users> userList = [
  Users(
      name: "Codelandiya",
      surname: "Akademiya",
      username: "codelandiya",
      userpass: "5566",
      userBirthDay: 20,
      userBirthMonth: 04,
      userBirthYear: 2023)
];

void loginUsername() {
  space();
  print("Istifadeci adiniz (username)");
  space();
  usernameCheck();
}

void usernameCheck() {
  String usernameInput = stdin.readLineSync().toString();
  for (int i = 0; i < userList.length; i++) {
    if (usernameInput == userList[i].username) {
      logIn = i;
      loginUserpass(usernameInput);
      break;
    }
  }

    userList.forEach((element) {
    if (element.username == usernameInput) {
      logIn =
          userList.indexWhere((element) => usernameInput == element.username);
      print("LogIn = $logIn");
      loginUserpass(usernameInput);
    }
  });

  for (int i = 0; i < adminList.length; i++) {
    if (usernameInput == adminList[i].adminUserName) {
      admLogIn = i;
      loginUserpass(usernameInput);
      break;
    }
  }
  if (logIn == -1 && admLogIn == -1) {
    space();
    print("Istifadechi adinizi (username) duzgun qeyd edin");
    space();
    usernameCheck();
  }
}

void loginUserpass(usernameInput) {
  space();
  print("Shifrenizi daxil edin");
  space();
  userpassCheck(usernameInput);
}

void userpassCheck(usernameInput) {
  logIn = -1;
  admLogIn = -1;
  String userpassInput = stdin.readLineSync().toString();
  for (int i = 0; i < userList.length; i++) {
    if (userpassInput == userList[i].userpass &&
        usernameInput == userList[i].username) {
      logIn = i;
      userWelcome();
      break;
    }
  }

  for (int i = 0; i < adminList.length; i++) {
    if (userpassInput == adminList[i].adminPass &&
        usernameInput == adminList[i].adminUserName) {
      admLogIn = i;
      space();
      print(
          "Hormetli Admin ${adminList[i].adminName} ${adminList[i].adminSurname} xosh geldiniz!");
      space();
      break;
    }
  }
  if (logIn == -1 && admLogIn == -1) {
    space();
    print("Shifrenizi duzgun daxil edin");
    space();
    userpassCheck(usernameInput);
  }
}
