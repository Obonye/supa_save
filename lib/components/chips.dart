import 'package:flutter/material.dart';

class HomeFilterChips extends StatefulWidget {
  const HomeFilterChips({super.key});

  @override
  State<HomeFilterChips> createState() => _HomeFilterChipsState();
}

class _HomeFilterChipsState extends State<HomeFilterChips> {
  List<String> choices = ["All", "Supermarkets", "Restaurants"];
  int selectedChoice = 0;

  @override
  Widget build(BuildContext context) {
    return _choiceChipBuilder();
  }

  Widget _choiceChipBuilder() {
    bool isSelected = false;
    //TODO:FIX chip functionality
    return Row(
      children: [
        for (int i = 0; i < choices.length; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChoiceChip(
              label: Text(choices[i]),
              selected: selectedChoice == i,
              selectedColor: Colors.amber,
              onSelected: (bool selected) {
                setState(() {
                  selectedChoice = i;
                });
              },
            ),
          ),
      ],
    );
  }
}
