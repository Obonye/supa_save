
import 'package:super_save/models/food_item_model.dart';

class Cart{
  List<FoodItem> items=[];
  double get totalPrice=> items.fold(0, (total, item) => total+double.parse(item.price));
}