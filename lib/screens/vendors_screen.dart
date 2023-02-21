import 'package:flutter/material.dart';
import 'package:super_save/components/chips.dart';

import 'package:super_save/components/vendor_grid_view.dart';

import 'package:super_save/models/models.dart';

import '../api/mock_fooderlich_service.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({
    super.key,
  });

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  final mockService = MockFooderlichService();
  final filterChips = HomeFilterChips();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Text(
                'Vendors',
                style: TextStyle(fontSize: 24),
              ),
              filterChips,
              VendorsGridView(vendorItems: snapshot.data?.vendorItems ?? [])
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
