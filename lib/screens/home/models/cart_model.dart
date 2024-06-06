import 'package:flutter/material.dart';
import 'package:pizza_repository/pizza_repository.dart';

class CartModel extends ChangeNotifier {
  final List<Pizza> _items = [];

  List<Pizza> get items => _items;

  void addItem(Pizza pizza) {
    _items.add(pizza);
    notifyListeners();
  }

  void removeItem(Pizza pizza) {
    _items.remove(pizza);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
