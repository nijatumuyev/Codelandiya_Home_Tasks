import 'employee.dart';
import 'manager.dart';

void main() {
  Manager manager = Manager(
      team: [],
      position: "Manager",
      name: "Nicat",
      mail: "nicat.manager@dev.az");
  Employee employee1 = Employee(
      position: "Junior Developer",
      name: "Mensur",
      mail: "mensur.dev@gmail.com");
  Employee employee2 = Employee(
      position: "Middle Developer",
      name: "Togrul",
      mail: "togrul.dev@gmail.com");
  print(" " * 10);
  employee1.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  employee2.display();
  print(" " * 10);
  manager.addToTeam("Cavid", "Intern", "Cavid@ceka.az");
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  manager.display();
  print(" " * 10);
  print("-" * 10);
  print(" " * 10);
  manager.team.forEach((element) {
    print(
        "Name: ${element.name} Mail: ${element.mail} E-Mail: ${element.mail}");
    print(" " * 10);
    print("-" * 10);
    print(" " * 10);
  });
}
