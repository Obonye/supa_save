import 'package:flutter/material.dart';

import 'dashboard_toggle_buttons.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sales',
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                  SalesToggleButton()
                ],
              ),
              Row(
                children: [
                  Text(
                    'P17,000',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 40,
                        fontFamily: 'Poppins'),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
