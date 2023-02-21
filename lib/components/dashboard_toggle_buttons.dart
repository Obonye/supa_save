import 'package:flutter/material.dart';

class SalesToggleButton extends StatefulWidget {
  const SalesToggleButton({super.key});

  @override
  State<SalesToggleButton> createState() => _SalesToggleButtonState();
}

class _SalesToggleButtonState extends State<SalesToggleButton> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: ToggleButtons(
        constraints: BoxConstraints.expand(width: 80, height: double.infinity),
        color: Colors.white,
        isSelected: isSelected,
        selectedColor: Color(0xFF00C853),
        fillColor: Color(0xFF00C853),
        renderBorder: false,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Weekly',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Monthly',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ],
        onPressed: (int myIndex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == myIndex) {
                isSelected[index] = true;
              } else {
                isSelected[index] = false;
              }
            }
          });
        },
      ),
    );
  }
}
