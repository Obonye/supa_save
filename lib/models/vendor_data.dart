class VendorData {
  String id;
  String vendorName;
  String category;
  String location;
  String logo;
  String hero;

  VendorData(
      {required this.id,
      required this.category,
      required this.location,
      required this.logo,
      required this.vendorName,
      required this.hero});

  factory VendorData.fromJson(Map<String, dynamic> json) {
    return VendorData(
      id: json['id'] ?? '',
      vendorName: json['Name'] ?? '',
      category: json['category'] ?? '',
      logo: json['logo'] ?? '',
      location: json['location'] ?? '',
      hero: json['hero']??''
    );
  }
}
