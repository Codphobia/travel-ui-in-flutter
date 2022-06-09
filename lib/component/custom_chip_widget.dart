import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';
import 'package:travel_app_ui/model/chip.dart';

List<Chips> chipsList = [
  Chips("All", kGreayButtonColor),
  Chips("Filght", kGreayButtonColor),
  Chips("Cruise", kGreayButtonColor),
  Chips("Train", kGreayButtonColor),
  Chips("Car", kGreayButtonColor),
  Chips("Hotel", kGreayButtonColor),
  Chips("Park", kGreayButtonColor),
  Chips("Air", kGreayButtonColor),
  Chips("Bali", kGreayButtonColor),
  Chips("Agency", kGreayButtonColor),
];

class MyChipWidget extends StatefulWidget {
  const MyChipWidget({Key? key}) : super(key: key);

  @override
  State<MyChipWidget> createState() => _MyChipWidgetState();
}

class _MyChipWidgetState extends State<MyChipWidget> {
  List<Widget> chips = [];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: chipsList.length,
      itemBuilder: (context, index) {
        return Wrap(
          children: choiceChips(),
        );
      },
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: ChoiceChip(
          label: Text(chipsList[i].label),
          labelStyle:
              selectedIndex == i ? kChipForWhiteTextStyle : kChipTextStyle,
          selectedColor:
              selectedIndex == i ? kButtonColor : chipsList[i].chipColor,
          backgroundColor: chipsList[i].chipColor,
          selected: selectedIndex == i,
          onSelected: (bool value) {
            setState(() {
              selectedIndex = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
