import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/models/cart_model.dart';

import '../models/food_item_model.dart';
import '../theme/custom_theme.dart';

class ReserveButton extends StatelessWidget {
  final FoodItem food;
  const ReserveButton({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartModel cart = CartModel();
    return Consumer<CartModel>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            {
              Provider.of<CartModel>(context, listen: false).addItem(food);
              SnackBar(
                content: Text('${food.itemName} reserved'),
              );
            }
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF00C853)),
            fixedSize: MaterialStateProperty.all<Size>(const Size(300, 40)),
          ),
          child: Text(
            'RESERVE',
            style: CustomTheme.lightTextTheme.headline1,
          ),
        ),
      ),
    );
  }
}
