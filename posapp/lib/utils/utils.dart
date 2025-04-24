import '../models/drink_model.dart';

double calculateCartPrice(List<Drink> cart) {
  double result = 0;
  for (Drink drink in cart) {
    result += drink.price;
  }
  return result;
}
