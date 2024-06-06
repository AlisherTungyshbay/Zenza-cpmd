import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zenza/screens/home/models/cart_model.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Consumer<CartModel>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              final item = cart.items[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text('\$${item.price}'),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    // Удаление товара из корзины
                    cart.removeItem(item);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
