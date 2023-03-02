// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_save/api/mock_fooderlich_service.dart';
import 'package:super_save/components/components.dart';
import 'package:super_save/components/vendor_grid_view.dart';
import 'package:super_save/models/food_item_model.dart';
import 'package:super_save/theme/custom_theme.dart';

import '../models/explore_data.dart';
import 'map_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final mockService = MockFooderlichService();

  HomeFilterChips filterChips = HomeFilterChips();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFFFF5722),
                        ),
                        Text(
                          'Gaborone,Botswana',
                          style: CustomTheme.lightTextTheme.bodyText1,
                        ),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => MapScreen())));
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(color: Color(0xFF00C853)),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xFF00C853)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    )
                  ],
                ),
              ),
              filterChips,
              TrendingListView(
                foodItems: snapshot.data?.foodItems ?? [],
                vendors: snapshot.data?.vendorItems ?? [],
              ),
              RecommendedListView(
                foodItems: snapshot.data?.foodItems ?? [],
              ),
              CategoryListViewBuilder(
                foodItems: snapshot.data?.foodItems ?? [],
                category: 'Groceries',
                vendorsList: snapshot.data?.vendorItems ?? [],
              ),
              CategoryListViewBuilder(
                foodItems: snapshot.data?.foodItems ?? [],
                category: 'Meal',
                vendorsList: snapshot.data?.vendorItems ?? [],
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
