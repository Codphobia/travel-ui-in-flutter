import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';
import 'package:travel_app_ui/model/button.dart';

List<Button> buttonList = [
  Button("Avia", kGreayButtonColor.withOpacity(0.3)),
  Button("Train", kGreayButtonColor.withOpacity(0.3)),
  Button("Car", kGreayButtonColor.withOpacity(0.3)),
];

class MyButtonWidget extends StatefulWidget {
  const MyButtonWidget({Key? key}) : super(key: key);

  @override
  State<MyButtonWidget> createState() => _MyButtonWidgetState();
}

class _MyButtonWidgetState extends State<MyButtonWidget> {
  List<Widget> buttons = [];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: buttonList.length,
      itemBuilder: (context, index) {
        return Wrap(
          children: choiceButton(),
        );
      },
    );
  }

  List<Widget> choiceButton() {
    List<Widget> buttons = [];
    for (int i = 0; i < buttonList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: ChoiceChip(
          label: Text(buttonList[i].label),
          labelStyle:
              selectedIndex == i ? kChipForWhiteTextStyle : kChipTextStyle,
          selectedColor:
              selectedIndex == i ? kButtonColor : buttonList[i].buttonColor,
          backgroundColor: buttonList[i].buttonColor,
          selected: selectedIndex == i,
          onSelected: (bool value) {
            setState(() {
              selectedIndex = i;
            });
          },
        ),
      );
      buttons.add(item);
    }
    return buttons;
  }
}
