import 'package:flutter/material.dart';

class Item{
final String jpName;
final String enName;
final String sound;
final String? image;
 Item({
  required this.enName,
  required this.jpName,
  required this.sound,
  this.image,
});
}