import 'person.dart';

class Employee implements Person {
  String position;
  Employee({
    required this.position,
    required this.name,
    required this.mail,
  });

  @override
  void display() {
    print('''
Name: $name
Position: $position
E-mail: $mail
''');
  }

  @override
  String mail;

  @override
  String name;
}
