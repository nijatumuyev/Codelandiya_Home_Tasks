void main() {
  List<String> list1 = [
    'ASUS',
    'Asus',
    'asus',
    'HP',
    'hp',
    'Hp',
    'MSI',
    'msi',
    'Msi'
  ];
  Map<String, int> product = counting(list1);
  print(product);
}

Map<String, int> counting(List<String> list) {
  Map<String, int> newProducts = {};
  for (var element in list) {
    String productName = element.toLowerCase();
    newProducts.keys.contains(productName)
        ? newProducts[productName] = newProducts[productName]! + 1
        : newProducts[productName] = 1;
  }
  return newProducts;
}
