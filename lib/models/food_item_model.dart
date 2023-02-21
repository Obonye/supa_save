class FoodItem {
  String id;
  String itemName;
  String price;
  String foodPictureUrl;
  String quantity;
  String classification;
  String location;
  String collectionTime;
  String collectionDay;

  

  FoodItem(
      {required this.id,
      required this.itemName,
      required this.price,
      required this.foodPictureUrl,
      required this.quantity,
      required this.classification,
      required this.location,
      required this.collectionTime,
      required this.collectionDay});

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
        id: json['id'] ?? '',
        itemName: json['itemName'] ?? '',
        price: json['price'] ?? '',
        foodPictureUrl: json['foodPictureUrl'] ?? '',
        quantity: json['quantity'] ?? '',
        classification: json['classification'] ?? '',
        location: json['location'] ?? '',
        collectionTime: json['collectionTime'] ?? '',
        collectionDay: json['collectionDay'] ?? '');
  }
  List<FoodItem> filterByCategory(List<FoodItem> foods, String category) {
    return foods.where((foods) => foods.classification == category).toList();
  }
  double priceMultiplier(int counter,FoodItem food){
    return double.parse(food.price)*counter;
  }
}
