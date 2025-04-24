import 'package:flutter/material.dart';
import 'package:posapp/models/drink_model.dart';
import 'package:posapp/models/restaurant_model.dart';
import 'package:posapp/screens/checkout_screen.dart';
import 'package:posapp/screens/menu.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(),debugShowCheckedModeBanner: false,);
  }
}

class HomeScreen extends StatelessWidget {
  final Restaurant restaurant = Restaurant();
  void _onAddToCart(Drink drink) {
    restaurant.cart.add(drink);
    print('${drink.name} added to cart!');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home Screen'))),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => MenuScreen(restaurant: restaurant,onAddToCart: (Drink) {},
                        ),
                  ),
                );
              },
              child: Text('Go to Menu'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => CheckoutScreen(restaurant: restaurant,
                        ),
                  ),
                );
              },
              child: Text('Go to Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
