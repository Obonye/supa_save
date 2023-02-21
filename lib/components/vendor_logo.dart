import 'package:flutter/material.dart';
import 'package:super_save/models/models.dart';

class VendorLogo extends StatelessWidget {
  final VendorData vendor;
  const VendorLogo({super.key, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 30,
      minRadius: 30,
      backgroundImage: AssetImage(vendor.logo),
    );
  }
}
