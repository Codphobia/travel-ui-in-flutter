import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';
import 'package:travel_app_ui/model/chip.dart';

List<Chips> chipsList = [
  Chips("All", kGreayButtonColor.withOpacity(0.3)),
  Chips("Filght", kGreayButtonColor.withOpacity(0.3)),
  Chips("Cruise", kGreayButtonColor.withOpacity(0.3)),
  Chips("Train", kGreayButtonColor.withOpacity(0.3)),
  Chips("Car", kGreayButtonColor.withOpacity(0.3)),
  Chips("Hotel", kGreayButtonColor.withOpacity(0.3)),
  Chips("Park", kGreayButtonColor.withOpacity(0.3)),
  Chips("Air", kGreayButtonColor.withOpacity(0.3)),
  Chips("Bali", kGreayButtonColor.withOpacity(0.3)),
  Chips("Agency", kGreayButtonColor.withOpacity(0.3)),
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
      itemCount: 10,
      itemBuilder: (context, index) {
        return Wrap(
          children: choiceChips(),
        );
      },
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < 10; i++) {
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
