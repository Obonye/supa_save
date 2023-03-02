import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/components/card_item_card.dart';

import '../models/cart_model.dart';
import '../models/food_item_model.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: ((context, cart, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: cart.cart.items.length,
        itemBuilder: (context, index) {
          return CardItemCard(
            food: cart.cart.items[index],
          );
        },
      );
    }));
  }
}
