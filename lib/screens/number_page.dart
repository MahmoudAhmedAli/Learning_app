import 'package:flutter/material.dart';
import 'package:learningappagain/component/list_item.dart';
import 'package:learningappagain/models/modle.dart';

class nubmerPage extends StatelessWidget {
   nubmerPage({Key? key}) : super(key: key);
 final List<Item> numberNumbersItems=[
   Item(
       sound: 'number_one_sound.mp3',
       image: 'assets/images/numbers/number_one.png',
       jpName: 'Ichi',
       enName: 'one'),
   Item(
       sound: 'number_two_sound.mp3',
       image: 'assets/images/numbers/number_two.png',
       jpName: 'Ni',
       enName: 'Two'),
   Item(
       sound: 'number_three_sound.mp3',
       image: 'assets/images/numbers/number_three.png',
       jpName: 'Mittsu',
       enName: 'Three'),
   Item(
       sound: 'number_four_sound.mp3',
       image: 'assets/images/numbers/number_four.png',
       jpName: 'Shi',
       enName: 'Four'),
   Item(
       sound: 'number_five_sound.mp3',
       image: 'assets/images/numbers/number_five.png',
       jpName: 'Go',
       enName: 'Five'),
   Item(
       sound: 'number_six_sound.mp3',
       image: 'assets/images/numbers/number_six.png',
       jpName: 'Roku',
       enName: 'Six'),
   Item(
       sound: 'number_seven_sound.mp3',
       image: 'assets/images/numbers/number_seven.png',
       jpName: 'Sebun',
       enName: 'Seven'),
   Item(
       sound: 'number_eight_sound.mp3',
       image: 'assets/images/numbers/number_eight.png',
       jpName: 'Hachi',
       enName: 'Eight'),
   Item(
       sound: 'number_nine_sound.mp3',
       image: 'assets/images/numbers/number_nine.png',
       jpName: 'Kyū',
       enName: 'Nine'),
   Item(
       sound: 'number_ten_sound.mp3',
       image: 'assets/images/numbers/number_ten.png',
       jpName: 'Jū',
       enName: 'Ten'),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Number'
        ),
      ),

      body:ListView.builder(
          itemCount: numberNumbersItems.length,
          itemBuilder: (context,index){
        return listItem(color: Colors.yellow,
        item: numberNumbersItems[index],
          itemType: 'numbers',
        );

      }
      ),
    );
  }
}
