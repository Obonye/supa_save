import 'package:flutter/material.dart';

import '../models/models.dart';

class NumberOfItems extends StatefulWidget {
  
  int count = 1;
  NumberOfItems({ super.key});

  @override
  State<NumberOfItems> createState() => _NumberOfItemsState();

  

  int getCount() {
    return count;
  }

  void setCount(count) {
    this.count = count;
  }
}

class _NumberOfItemsState extends State<NumberOfItems> {
  NumberOfItems noOfitem = NumberOfItems();

  @override
  Widget build(BuildContext context) {
    int count = noOfitem.getCount();
    return Container(
      constraints: BoxConstraints.expand(width: 200, height: 50),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: (() {
                setState(() {
                  count--;
                  noOfitem.setCount(count);
                  print(count);
                });
              }),
              icon: Icon(
                Icons.remove_circle_rounded,
                color: Color(0xFFFF5722),
                size: 30,
              )),
          Text(
            '$count',
            style: TextStyle(fontSize: 30),
          ),
          IconButton(
              onPressed: (() {
                setState(() {
                  count++;
                  noOfitem.setCount(count);
                });
              }),
              icon: Icon(
                Icons.add_circle_rounded,
                color: Color(0xFFFF5722),
                size: 30,
              )),
        ],
      ),
    );
  }
}
