// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_save/components/like_button.dart';
import 'components.dart';
import 'package:super_save/models/models.dart';
import '../screens/food_detail_screen.dart';

class RecommendedCard extends StatelessWidget {
  final FoodItem food;
  int? id;
  VendorData? vendors;
  RecommendedCard({super.key, required this.food, this.id,this.vendors});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) => FoodDetailScreen(food: food,vendor: vendors!,))));
      },
      onLongPress: () {
        showModalBottomSheet(
            context: context,
            isDismissible: true,
            elevation: 8,
            builder: ((context) {
              return ModalBody(
                food: food,
                vendor: vendors!,
                foodPrice: double.parse(food.price),

              );
            }));
      },
      splashColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          clipBehavior: Clip.antiAlias,
          constraints: const BoxConstraints.expand(width: 340, height: 150),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color.fromRGBO(0, 0, 0, 0.86)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    constraints:
                        const BoxConstraints.expand(width: 75, height: 150),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(food.foodPictureUrl),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          food.itemName,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              food.location,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                            height: 25,
                            decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 6,
                                right: 6,
                                bottom: 0,
                              ),
                              child: Text(
                                'P${food.price}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        Container(
                            height: 30,
                            width: 50,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 2, 118, 70),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 6,
                                right: 6,
                                bottom: 0,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    food.quantity,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [LikeButton()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
