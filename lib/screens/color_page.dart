import 'package:flutter/material.dart';
import 'package:learningappagain/component/list_item.dart';
import 'package:learningappagain/models/modle.dart';

class colorPage extends StatelessWidget {
  colorPage({Key? key}) : super(key: key);
  List<Item> numberColorsItem = [
    Item(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      sound: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      sound: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      sound: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: ListView.builder(
          itemCount: numberColorsItem.length,
          itemBuilder: (context, index) {
            return listItem(
              color: Colors.red,
              item: numberColorsItem[index],
              itemType: 'colors',
            );
          }),
    );
  }
}
