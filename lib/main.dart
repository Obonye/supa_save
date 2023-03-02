import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_save/models/cart_model.dart';
import 'package:super_save/models/food_item_model.dart';
import 'package:super_save/screens/home_screen.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: ((context) => CartModel()),
    child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'RockWell'),
        home: Home())
    );
    
     
  }
}
