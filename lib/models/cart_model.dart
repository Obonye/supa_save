import 'package:flutter/material.dart';
import 'package:super_save/models/cart.dart';
import 'package:super_save/models/food_item_model.dart';

class CartModel extends ChangeNotifier {
  Cart _cart = Cart();
  int counter = 1;
  Cart get cart => _cart;
  int get count => counter;

  void addItem(FoodItem item) {
    _cart.items.add(item);
    notifyListeners();
    print('item added');
  }

  void removeItem(FoodItem item) {
    _cart.items.remove(item);
    notifyListeners();
  }

  double multiplier(FoodItem item, int counter) {
    notifyListeners();
    this.counter = counter;
    return double.parse(item.price) * counter;
  }
}
