import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:super_save/components/food_card.dart';
import 'package:super_save/models/food_item_model.dart';

import '../functions/food_filter.dart';
import '../models/models.dart';

class TrendingListView extends StatelessWidget {
  final _controller = PageController();

  List<FoodItem> foodItems;
  List<VendorData> vendors;
  int idx = 3;
  TrendingListView({super.key, required this.foodItems, required this.vendors});
  //make object oriented
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Popular Now',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                final food = foodItems[index];
                final vendor = vendors[index];
                return FoodCard(
                  food: food,
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
