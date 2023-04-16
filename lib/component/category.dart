import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({Key? key, required this.name, required this.ontap,required this.color})
      : super(key: key);
  String? name;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 100,
        width: double.infinity,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('$name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}
