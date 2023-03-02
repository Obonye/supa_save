import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/components/quantity_selector.dart';
import 'package:super_save/models/cart_model.dart';
import '../models/models.dart';
import '../theme/custom_theme.dart';
import 'components.dart';
import 'reserve_button.dart';

class ModalBody extends StatelessWidget {
  final FoodItem food;
  final VendorData vendor;

  ModalBody(
      {super.key,
      required this.food,
      required this.vendor,
      required double foodPrice});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: ((context, value, child) {
      return Container(
          color: Color.fromRGBO(0, 0, 0, 0.86),
          height: 400,
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints.expand(
                  height: 90,
                  width: double.infinity,
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(vendor.hero), fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(vendor.vendorName,
                            style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(
                          Provider.of<CartModel>(context, listen: false)
                              .multiplier(food, value.count)
                              .toStringAsFixed(2),
                          style: const TextStyle(
                              fontSize: 36, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Description',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(215, 187, 185, 185))),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: QuantitySelector(
                            food: food,
                            count: value.count,
                          )),
                          Center(
                            child: ReserveButton(
                              food: food,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    }));
  }
}
