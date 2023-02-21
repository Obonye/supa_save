// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_save/screens/dashboard.dart';
import 'package:super_save/screens/shop_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
//FIXME: finish navbar
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text('flutter Project'),
              accountEmail: Text('fltop@flutter.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/profile.jpg',
                ),
              )),
          ListTile(
            iconColor: Colors.black,
            textColor: Colors.black,
            title: Text('Dashboard'),
            leading: Icon(Icons.dashboard),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Dashboard())));
            },
          ),
          ListTile(
            iconColor: Colors.black,
            textColor: Colors.black,
            title: Text('Shop'),
            leading: Icon(Icons.shopping_bag),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => ShopScreen())));
            },
          ),
          ListTile(
            iconColor: Colors.black,
            textColor: Colors.black,
            title: Text('Profile'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
      
    );
  }
}
