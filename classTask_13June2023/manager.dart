import 'employee.dart';

class Manager extends Employee {
  List<Employee> team;
  Manager({
    required this.team,
    required super.position,
    required super.name,
    required super.mail,
  });

  @override
  void display() {
    print('''
Name: $name
Position: $position
E-mail: $mail
''');
  }

  void addToTeam(String newName, String newPosition, String newMail) {
    team.add(Employee(name: newName, mail: newMail, position: newPosition));
  }
}
