import 'package:flutter/material.dart';
import 'package:super_save/components/components.dart';
import 'package:super_save/components/food_card.dart';
import 'package:super_save/models/food_item_model.dart';
import 'package:super_save/models/models.dart';

import '../functions/food_filter.dart';

class ListViewCreator extends StatelessWidget {
  List<FoodItem>? foodItems;
  List<VendorData>? vendorsList;
  Filter filter = Filter();
  String? category;

  ListViewCreator({
    super.key,
    this.foodItems,
    this.category,
    this.vendorsList,
  });
  @override
  Widget build(BuildContext context) {
    //foodItems = filter.filterByCategory(foodItems, category);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                category!,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              clipBehavior: Clip.hardEdge,
              itemCount: foodItems!.length,
              itemBuilder: (context, index) {
                final food = foodItems![index];
                final vendor = vendorsList![index];
                return VendorTile(
                  vendor: vendor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
