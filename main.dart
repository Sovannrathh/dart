import 'dart:io';

void main() {
  bool using = true;
  while (using) {
    print('Welcome to the Drink Shop');
    print('1. showMenu');
    print('select the option');
    String? option = stdin.readLineSync();
    if (option == "0") {
      return;
    } else if (option == "1") {
      showMenu();
    }
  }
}

// List<Map<String, dynamic>> availableDrink = ['id':'1','':];
void showMenu() {}
