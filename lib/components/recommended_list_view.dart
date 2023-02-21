import 'package:flutter/material.dart';
import 'package:super_save/components/components.dart';
import 'package:super_save/functions/food_filter.dart';
import 'package:super_save/models/models.dart';

class RecommendedListView extends StatelessWidget {
  
  
  List<FoodItem> foodItems;
  

  RecommendedListView({super.key, required this.foodItems,});
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recommended',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  shrinkWrap: true,
                  itemCount: foodItems.length,
                  itemBuilder: (context, index) {
                    final food = foodItems[index];
                    return RecommendedCard(food: food);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
