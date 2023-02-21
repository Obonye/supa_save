import 'package:super_save/models/models.dart';

class Filter {
  Filter();
  List<FoodItem> filterByCategory(List<FoodItem> foods, String category) {
    if (category.isEmpty) {
      category='Popular Now';
      return foods;
    }
    return foods.where((foods) => foods.classification == category).toList();
  }
  
  List<VendorData> filterByVendorType(List<VendorData> vendors, String vendorType){
    return vendors.where((vendors)=> vendors.category==vendorType).toList();
  }
}
