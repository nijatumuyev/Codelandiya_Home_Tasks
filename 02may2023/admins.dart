class Admins {
  String adminName = "";
  String adminSurname = "";
  String adminUserName = "";
  String adminPass = "";
  int adminBirthDay = 0;
  int adminBirthMonth = 0;
  int adminBirthYear = 0;
  Admins(
      {required this.adminName,
      required this.adminSurname,
      required this.adminUserName,
      required this.adminPass,
      required this.adminBirthDay,
      required this.adminBirthMonth,
      required this.adminBirthYear});
}

List<Admins> adminList = [
  Admins(
      adminName: "Nicat",
      adminSurname: "Umuyev",
      adminUserName: "nijatumuyev",
      adminPass: "4433",
      adminBirthDay: 17,
      adminBirthMonth: 10,
      adminBirthYear: 1994)
];
