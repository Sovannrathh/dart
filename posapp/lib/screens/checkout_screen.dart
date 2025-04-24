import 'package:flutter/material.dart';
import 'package:posapp/models/restaurant_model.dart';
import 'package:posapp/utils/utils.dart';

class CheckoutScreen extends StatelessWidget {
  final Restaurant restaurant;
  const CheckoutScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    double totalPrice = calculateCartPrice(restaurant.cart);
    return Scaffold(
      appBar: AppBar(title: Text('Checkout Menu')),
      body:
          restaurant.cart.isEmpty
              ? Center(child: Text('No items found in the cart'))
              : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // List of items in the cart
                  Expanded(
                    child: ListView.builder(
                      itemCount: restaurant.cart.length,
                      itemBuilder: (context, index) {
                        final drink = restaurant.cart[index];
                        return ListTile(
                          title: Text('${drink.name} - \$${drink.price}'),
                          subtitle: Text('ID: ${drink.id}'),
                        );
                      },
                    ),
                  ),
                  // Display total price
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Total: \$${totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                ],
              ),
            ),
    );
  }
}
