import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {

  BuildCard({@required this.colour, this.cardData, this.onPress});

  final Color colour;
  final Widget cardData;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardData,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}