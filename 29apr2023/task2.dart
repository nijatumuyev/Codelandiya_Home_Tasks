//İstifadəçidən ən azı 5 sözdən ibarət cümlə daxil etməyi tələb edən proqram yaradın.
//Cümləni sözlərini əksinə sıralayan bir mesaj çap edin.
//Nümunə:dart programlaşdırma dilidir => dilidir proqramlaşdırma dart

import 'dart:io';

void main() {
  stdout.writeln("Zəhmət olmazsa ən azı 5 sözdən ibarət bir cümlə daxil edin.");
  String sentence = stdin.readLineSync()!;
  String wordslist = sentence.split(' ').reversed.join(' ');

  wordslist.split(' ').length >= 5
      ? print(wordslist)
      : print("Ən azı 5 söz daxil etməlisiniz !!!");
}
