// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_save/components/components.dart';
import 'package:super_save/models/food_item_model.dart';
import 'package:super_save/models/models.dart';

import '../screens/food_detail_screen.dart';

class FoodCard extends StatelessWidget {
  final FoodItem food;
  final VendorData vendor;
  const FoodCard({super.key, required this.food, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => FoodDetailScreen(
                  food: food,
                  vendor: vendor,
                ))));
      },
      onLongPress: () {
        
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            context: context,
            clipBehavior: Clip.antiAlias,
            isDismissible: true,
            elevation: 8,
            builder: ((context) {
              return ModalBody(
                food: food,
                vendor: vendor,
                foodPrice: double.parse(food.price),
              );
            }));
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          clipBehavior: Clip.antiAlias,
          constraints: const BoxConstraints.expand(width: 340, height: 230),
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.86),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints.expand(
                    width: double.infinity, height: 125),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(vendor.hero),
                        colorFilter: ColorFilter.mode(
                            Color.fromARGB(82, 0, 0, 0), BlendMode.darken),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 25,
                                  decoration: const BoxDecoration(
                                      color:
                                          Color.fromRGBO(238, 131, 107, 0.92),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 6,
                                      right: 6,
                                      bottom: 0,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${food.quantity} left', //TODO: rename to items left
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                              LikeButton()
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  VendorLogo(vendor: vendor),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      vendor.vendorName,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      food.itemName,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    Row(
                      children: [
                        Text(
                          '${food.collectionDay} ${food.collectionTime}',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 18,
                            ),
                            Text(
                              '4.5',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'Location',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF00C853),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
