class Accounts {
  late final String owner;
  late final int number;
  late double balance;
  Accounts({required this.owner, required this.number, required this.balance});
  void details() {
    print("Mushteri: $owner");
    print("Hesab nomresi: $number");
    print("Balans: $balance");
  }
  void topUp(double count) {
    balance += count;
    print("Balansiniza $count Azn elave olundu.");
    print("Sizin yeni balansiniz $balance Azn-dir.");
  }
  void withdraw(double count) {
    if (balance < count) {
      print("Balansinizda kifayet qeder vesait yoxdur");
      print("Sizin cari balansiniz: $balance Azn-dir");
    } else {
      balance -= count;
      print("Balansinizdan $count Azn cixarish etdiniz");
      print("Sizin cari balansiniz: $balance Azn-dir");
    }
  }
}
