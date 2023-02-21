// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_save/components/components.dart';
import 'package:super_save/theme/custom_theme.dart';

import '../models/models.dart';

class FoodDetailScreen extends StatelessWidget {
  final FoodItem food;
  final VendorData vendor;
  const FoodDetailScreen({super.key, required this.food, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          backgroundColor: Colors.black,
          actions: [LikeButton()],
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(vendor.hero),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken)),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              VendorLogo(vendor: vendor),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                vendor.vendorName,
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )
                            ],
                          ),
                          Container(
                              height: 25,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(238, 131, 107, 0.92),
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
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              ListView(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.shopping_bag),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    food.itemName,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Old Price',
                              style: TextStyle(
                                  color: Color.fromARGB(185, 158, 158, 158)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Rating',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.green[700],
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.timer),
                            Text(
                              'Pickup:${food.collectionTime}',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
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
                                      food.collectionDay,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.amber,
                          ),
                          title: Text(
                              'Location Address'), //TODO: location should be from maps API
                          trailing: Icon(Icons.chevron_right),
                          onTap: () {},
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(fontSize: 24),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Description body'),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Allergens',
                              style: TextStyle(fontSize: 24),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Description body'),
                          ],
                        ),
                        Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
      bottomSheet: ReserveButton(),

      //Section showing price,quantity and quality and seller

      //Buy now or bid button
    );
  }
}

class ReserveButton extends StatelessWidget {
  const ReserveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('RESERVE', style: CustomTheme.lightTextTheme.headline1),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF00C853)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(340, 40))),
          ),
        ],
      ),
    );
  }
}
