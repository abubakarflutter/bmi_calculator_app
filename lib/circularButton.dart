import 'package:flutter/material.dart';


class CircularIconButton extends StatelessWidget {
  CircularIconButton({this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      onPressed: onPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
          width: 50.0, height: 50.0
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}

