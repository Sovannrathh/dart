import 'package:flutter/material.dart';
import 'package:posapp/models/drink_model.dart';
import 'package:posapp/models/restaurant_model.dart';

class MenuScreen extends StatefulWidget {
  final Restaurant restaurant;
  final void Function(Drink) onAddToCart;

  MenuScreen({required this.restaurant, required this.onAddToCart});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  void _addToCart(Drink drink) {
    setState(() {
      widget.restaurant.cart.add(drink);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${drink.name} added to cart!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drink Menu')),
      body: ListView.builder(
        itemCount: widget.restaurant.availableDrinks.length,
        itemBuilder: (context, index) {
          final drink = widget.restaurant.availableDrinks[index];
          return ListTile(
            title: Text('${drink.name} - \$${drink.price}'),
            subtitle: Text('ID: ${drink.id}'),
            trailing: Icon(Icons.add_shopping_cart),
            onTap: () => _addToCart(drink),
          );
        },
      ),
    );
  }
}
