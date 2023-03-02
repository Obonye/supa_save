import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/models/cart_model.dart';

import '../models/food_item_model.dart';

class CardItemCard extends StatelessWidget {
  final FoodItem food;

  CardItemCard({required this.food, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: ((context, cart, child) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(food.foodPictureUrl),
            ),
            title: Text(food.itemName),
            subtitle:
                Text(cart.multiplier(food, cart.counter).toStringAsFixed(2)),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
                cart.removeItem(food);
              },
            ),
          )),
    );
  }
}
