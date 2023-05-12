import 'dart:io';
import 'products.dart';
import 'main.dart';
import 'admins.dart';
import 'user_panel.dart';
import 'registration.dart';

class Users {
  String name = "";
  String surname = "";
  String username = "";
  String userpass = "";
  int userBirthDay = 0;
  int userBirthMonth = 0;
  int userBirthYear = 0;
  Users(
      {required this.name,
      required this.surname,
      required this.username,
      required this.userpass,
      required this.userBirthDay,
      required this.userBirthMonth,
      required this.userBirthYear});
}

int loggedIndex = -1;
int loggedAdminIndex = -1;
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
String loggedName = userList[loggedIndex].name;
String loggedSurname = userList[loggedIndex].surname;
String loggedPass = userList[loggedIndex].userpass;
String loggedUsername = userList[loggedIndex].username;
int loggedUserBirthDay = userList[loggedIndex].userBirthDay;
int loggedUserBirthMonth = userList[loggedIndex].userBirthMonth;
int loggedUserBirthYear = userList[loggedIndex].userBirthYear;
void login() {
  space();
  print("Istifadeci adiniz (username)");
  space();
  usernameCheck();
}

void usernameCheck() {
  String username = stdin.readLineSync().toString();
  for (int i = 0; i < userList.length; i++) {
    if (username.isEmpty ||
        username.startsWith(" ") ||
        username.endsWith(" ") ||
        username.contains(" ") ||
        userList[i].username != username) {
      space();
      print("Istifadechi adinizi (username) duzgun qeyd edin");
      space();
      usernameCheck();
    } else {
      loggedIndex = i;
      space();
      print("Shifrenizi daxil edin");
      space();
      userpassCheck(username);
    }
  }
}

void userpassCheck(username) {
  String userpass = stdin.readLineSync().toString();
  for (int i = 0; i < userList.length; i++) {
    if (userpass.isEmpty ||
        userpass.startsWith(" ") ||
        userpass.endsWith(" ") ||
        userpass.contains(" ") ||
        userpass != userList[loggedIndex].userpass) {
      space();
      print("Shifrenizi duzgun daxil edin");
      space();
      userpassCheck(username);
    } else {
      userWelcome();
    }
  }
  for (int i = 0; i < adminList.length; i++) {
    if (adminList[i].adminUserName == username &&
        adminList[i].adminPass == userpass) {
      loggedAdminIndex = i;
      space();
      print(
          "Hormetli ${adminList[i].adminName} ${adminList[i].adminSurname} xosh geldiniz!");
      space();
    }
  }
}
