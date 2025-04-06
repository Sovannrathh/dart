import 'dart:io';

List<Map<String, dynamic>> available = [
  {"id": '1', "model": "Toyota Camry", "year": "2023", "price": 30000},
  {"id": '2', "model": "Honda Civic", "year": "2022", "price": 25000},
  {"id": '3', "model": "Ford Mustang", "year": "2024", "price": 55000},
  {"id": '4', "model": "BMW X5", "year": "2023", "price": 65000},
  {"id": '5', "model": "Tesla Model 3", "year": "2024", "price": 40000},
];
List<Map<String, dynamic>> cart = [];
void menu() {
  while (true) {
    print('show the car');
    print("+----------------+------+-----------+");
    print("|id| Car Model      | Year | Price     |");
    print("+----------------+------+-----------+");
    // print("| Toyota Camry   | 2023 | \$30,000  |");
    for (Map<String, dynamic> car in available) {
      print("|${car['id']}|${car['model']}|${car['year']}|${car['price']}|");
    }
    print("+----------------+------+-----------+");

    print('pick a car: ');

    String? opt = stdin.readLineSync();
    if (opt == '0') {
      break;
    }
    Map<String, dynamic>? foundCar;
    for (Map<String, dynamic> car in available) {
      if (opt == car['id']) {
        foundCar = car;
      }
    }
    if (foundCar == null) {
      print("no");
      continue;
    }

    cart.add(foundCar);
  }
}
// TODO checkout

void main() {
  bool using = true;
  while (using) {
    print('Welcome to POS');
    print('1. view menu');
    print('2');
    print('3');
    print('select the option');
    String? number = stdin.readLineSync();
    switch (number) {
      case '1':
        menu();
        break;
      default:
        using = false;
        break;
    }
  }

  print(cart);
}

// void main() {
//   print(available[1]['model']);
// }
