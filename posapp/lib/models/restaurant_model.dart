import 'drink_model.dart';

class Restaurant {
  final List<Drink> availableDrinks = [
    Drink(1, 'Soda', 9.99),
    Drink(2, 'Pepsi', 9.99),
    Drink(3, 'Coca', 9.99),
    Drink(4, 'Macha', 9.99),
  ];

  final List<Drink> cart = [];

  double totalPrice() {
    double result = 0;
    for (Drink drink in cart) {
      result += drink.price;
    }
    return result;
  }
}
