import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.insidetext, this.ontap});

  final String insidetext;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: bottomContainerColor,
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            insidetext,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
            ),
          ),
        ),
      ),
    );
  }
}

