// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_save/models/food_item_model.dart';
import 'package:super_save/models/models.dart';
import 'components.dart';

class VendorTile extends StatelessWidget {
  final VendorData vendor;

  const VendorTile({super.key, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(maxWidth: 150, maxHeight: 150),
        decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.86),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Stack(children: [
          Container(
            constraints: BoxConstraints(
                minWidth: 150,
                minHeight: 75,
                maxHeight: 75,
                maxWidth: double.infinity),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(vendor.hero), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          ),
          Center(child: VendorLogo(vendor: vendor)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 115,
                ),
                Text(
                  vendor.vendorName,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
