import 'accounts.dart';

void main() {
  Accounts accountOne = Accounts(
      owner: "Nijat Umuyev", number: 7859632578412596, balance: 183.65);
  accountOne.details(); //Melumatlar print olundu
  accountOne.topUp(300); //Balans 300 azn artirildi
  accountOne.withdraw(83.65); //Balansdan 83.65 azn cixaris edildi
  accountOne.withdraw(402); //Balansdan artiq mebleg cixaris edilmeye cehd edildi
}
