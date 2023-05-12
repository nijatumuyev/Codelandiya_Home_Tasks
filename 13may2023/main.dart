void main() {
  //Task 1
  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6, 8];
  List<int> list3 = list1 + list2;
  list3.sort();
  print("Tam List (azdan choxa) $list3");
  print("-" * 27);

  //Task2
  Set<int> set1 = {1, 3, 5, 3, 6, 8, 6, 4, 9, 7, 4, 5, 2, 3, 9, 6};
  List<int> list5 = set1.toList();
  list5.sort();
  list5 = list5.reversed.toList();
  print("En boyuk ikinci element: ${list5[1]}");
  print("Tam List (choxdan aza) $list5");
}
