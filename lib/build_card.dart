import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {

  BuildCard({@required this.colour, this.cardData});

  final Color colour;

  final Widget cardData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardData,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}