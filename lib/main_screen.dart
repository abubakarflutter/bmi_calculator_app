import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'build_card.dart';
import 'card_inside_data.dart';


const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const cardInsideTextColor = Color(0xFF8D8E98);

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Text(
        'This a simple BMI Calculator',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BMI CALCULATOR',
          ),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: BuildCard(colour: cardColor,
                cardData: cardInsideData(textLabel: 'MALE',cardIcon: FontAwesomeIcons.mars),
              ),
              ),
              Expanded(child: BuildCard(colour:cardColor,
                cardData: cardInsideData(textLabel: 'FEMALE', cardIcon: FontAwesomeIcons.venus),

              ),),
            ],
          )),
          Expanded(child: BuildCard(colour: cardColor),),
          Expanded(child: Row(
            children: [
              Expanded(child: BuildCard(colour: cardColor),),
              Expanded(child: BuildCard(colour: cardColor),),
            ],
          ),),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            height: 60,
            width: double.infinity,
            child: TextButton(
              onPressed: (){},
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


