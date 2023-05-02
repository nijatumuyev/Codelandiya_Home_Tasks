//İstifadəçidən ən azı 5 sözdən ibarət cümlə daxil etməyi tələb edən proqram yaradın.
//Cümləni sözlərini əksinə sıralayan bir mesaj çap edin.
//Nümunə:dart programlaşdırma dilidir => dilidir proqramlaşdırma dart

import 'dart:io';

void main() {
  stdout.writeln("Zəhmət olmazsa ən azı 5 sözdən ibarət bir cümlə daxil edin.");
  String sentence = stdin.readLineSync()!;
  List<String> wordslist = sentence.split(' ');
   String rev = wordslist.reversed.join(' '); 

  wordslist.length >= 5
      ? print(rev)
      : print("Ən azı 5 söz daxil etməlisiniz !!!");
}
