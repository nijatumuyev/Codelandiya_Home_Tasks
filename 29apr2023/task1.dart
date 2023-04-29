//Task 1: İstifadəçidən adını və yaşını daxil etməyi tələb edən proqram yaradın.
//100 yaşının neçə il sonra tamam olduğunu bildirən bir mesaj çap edin.

import 'dart:io';

void main() {
  stdout.writeln("Adınızı daxil edin");
  String name = stdin.readLineSync()!;
  stdout.writeln("$name zəhmət olmazsa yaşınızı daxil edin");
  int age = int.parse(stdin.readLineSync().toString());

  if (age > 100) {
    print("$name sizin ${age - 100} il öncə 100 yaşınız tamam olub.");
  } else if (age < 100) {
    print("$name sizin ${100 - age} il sonra 100 yaşınız tamam olacaq.");
  } else {
    print("$name sizin artıq 100 yaşınız var :D TROLL )))");
  }
}
