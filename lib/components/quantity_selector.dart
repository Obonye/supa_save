import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/models/food_item_model.dart';

import '../models/cart_model.dart';

class QuantitySelector extends StatefulWidget {
  int count = 1;
  final FoodItem food;
  QuantitySelector({required this.food, required this.count, super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: ((context, value, child) {
      return Container(
        constraints: BoxConstraints.expand(width: 200, height: 50),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (() {
                  setState(() {
                    widget.count--;
                    Provider.of<CartModel>(context, listen: false)
                        .multiplier(widget.food, widget.count);
                  });
                }),
                icon: Icon(
                  Icons.remove_circle_rounded,
                  color: Color(0xFFFF5722),
                  size: 30,
                )),
            Text(
              '${widget.count}',
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
                onPressed: (() {
                  setState(() {
                    widget.count++;
                    Provider.of<CartModel>(context, listen: false)
                        .multiplier(widget.food, widget.count);
                  });
                }),
                icon: Icon(
                  Icons.add_circle_rounded,
                  color: Color(0xFFFF5722),
                  size: 30,
                )),
          ],
        ),
      );
      ;
    }));
  }
}
