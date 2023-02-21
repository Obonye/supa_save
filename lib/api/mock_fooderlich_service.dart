import 'dart:convert';

import 'package:flutter/services.dart';


import '../models/models.dart';

// Mock recipe service that grabs sample json data to mock recipe request/response
class MockFooderlichService {
  // Batch request that gets both today recipes and friend's feed
  Future<ExploreData> getExploreData() async {
    final foodItem = await _getFoodItem();
    final vendorItems = await _getVendorData();

    return ExploreData(foodItem, vendorItems);
  }

  // Get sample explore recipes json to display in ui

  // Get the sample friend json posts to display in ui
  Future<List<FoodItem>> _getFoodItem() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString = await _loadAsset('assets/sample data/food_items.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each post and convert json to Post object.
    if (json['food'] != null) {
      final foods = <FoodItem>[];
      json['food'].forEach((v) {
        foods.add(FoodItem.fromJson(v));
      });
      return foods;
    } else {
      return [];
    }
  }

  // Get sample explore recipes json to display in ui
  Future<List<VendorData>> _getVendorData() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample data/vendor_sample_data.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to ExploreRecipe object.
    if (json['vendors'] != null) {
      final vendors = <VendorData>[];
      json['vendors'].forEach((v) {
        vendors.add(VendorData.fromJson(v));
      });
      return vendors;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
