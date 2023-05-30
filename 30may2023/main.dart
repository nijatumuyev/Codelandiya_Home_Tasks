List<int> numbers = [1, 2, 5, 7, 14, 2, 3, 6, 9, 8, 7, 4, 1, 12, 14, 3, 2];
void main() {
  numbers.sort();
  print("En kichik eded: ${min(numbers)}");
  print("En boyuk eded: ${max(numbers)}");
  print("Ededlerin cemi: ${sum(numbers)}");
  print("Ededi ortasi: ${average(numbers)}");
}
int min(List<int> list) => list.first;
int max(List<int> list) => list.last;
int sum(List<int> list) => list.reduce((value, element) => value + element);
double average(List<int> list) {
  int avgSum = list.reduce((value, element) => value + element);
  return double.parse((avgSum / list.length).toStringAsFixed(3));
}
