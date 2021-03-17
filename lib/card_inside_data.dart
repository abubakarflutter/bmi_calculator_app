import 'package:flutter/material.dart';

const cardInsideTextColor = Color(0xFF8D8E98);

// ignore: camel_case_types
class cardInsideData extends StatelessWidget {

  cardInsideData({@required this.textLabel, this.cardIcon});

  final String textLabel;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            cardIcon,
            size: 80
        ),
        SizedBox(height: 10.0,),
        Text(textLabel, style: TextStyle(
            color: cardInsideTextColor
        ),)
      ],
    );
  }
}
