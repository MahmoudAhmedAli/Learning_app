import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learningappagain/models/modle.dart';

class listItem extends StatelessWidget {
  const listItem({Key? key, required this.item, required this.color,required this.itemType})
      : super(key: key);
  final Item item;
  final Color color;
  final String itemType;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: color,
        child: Row(

          children: [
            Container(
              color:  Color(0xffFFF6DC),
              child: Image.asset(item.image!),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(item.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  ),
                  Text(item.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () {
                  AudioCache player=AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(item.sound);
                },
                icon: Icon(
                  Icons.play_arrow,
                )),
          ],
        ),
      ),
    );
  }
}


class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,
        required this.color,
        required this.itemType,
        required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    phrase.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                try {
                  AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(phrase.sound);
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
