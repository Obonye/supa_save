import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class VendorsGridView extends StatelessWidget {
  final List<VendorData> vendorItems;

  const VendorsGridView({
    super.key,
    required this.vendorItems,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: vendorItems.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final vendor = vendorItems[index];
          return VendorTile(vendor: vendor);
        },
      ),
    );
  }
}