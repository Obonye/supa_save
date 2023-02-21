// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:super_save/components/food_card.dart';
import 'package:super_save/components/nav_bar.dart';
import 'package:super_save/screens/home_screen.dart';
import 'package:super_save/screens/search_screen.dart';
import 'package:super_save/screens/vendors_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const IconData shopping_cart =
      IconData(0xe59c, fontFamily: 'MaterialIcons');
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const HomeScreen(),
    const VendorScreen(),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.purple,
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => SearchScreen())));
          },
          backgroundColor: Color(0xFF00C583),
          child: const Icon(Icons.search),
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.explore,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'Vendors'),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.favorite,
              ),
              label: 'Favourites',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Reservations',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[700],
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
