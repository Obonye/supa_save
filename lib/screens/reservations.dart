import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/components/cart_list_view.dart';
import 'package:super_save/models/cart.dart';
import 'package:super_save/models/cart_model.dart';
import 'package:super_save/models/food_item_model.dart';
import 'package:super_save/screens/food_detail_screen.dart';
import 'package:super_save/screens/home.dart';

import '../components/reserve_button.dart';
import '../theme/custom_theme.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: (context, cart, child) {
      if (cart.cart.items.isNotEmpty) {
        return CartListView();
      } else {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Empty Cart',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
