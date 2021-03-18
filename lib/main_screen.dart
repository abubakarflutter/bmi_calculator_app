import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'build_card.dart';
import 'card_inside_data.dart';
import 'constants.dart';



enum Gender {
  male,
  female,
}


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Gender selectedGender;
  int height = 173;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: BuildCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? activeCardColor : inActiveCardColor,
                cardData: cardInsideData(textLabel: 'MALE',cardIcon: FontAwesomeIcons.mars),
              ),
              ),
              Expanded(
                child: BuildCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female ? activeCardColor : inActiveCardColor,
                cardData: cardInsideData(textLabel: 'FEMALE', cardIcon: FontAwesomeIcons.venus),

              ),),
            ],
          )),
          Expanded(
            child: BuildCard(
                colour: activeCardColor,
              cardData: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: cardLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: cardBigTextStyle),
                      Text('cm', style: cardLabelTextStyle,),
                    ],
                  ),
                  Slider(value: height.toDouble(),
                      min: 120,
                      max: 250,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF808E98),
                      onChanged: (double newValue){
                    setState(() {
                      height = newValue.toInt();
                    });
    })
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: BuildCard(
                    colour: activeCardColor,
                  cardData: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: cardLabelTextStyle,),
                      Text('60', style: cardBigTextStyle,),
                      Row(
                        children: [
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: BuildCard(
                  colour: activeCardColor,
                cardData: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style: cardLabelTextStyle,),
                    Text('23', style: cardBigTextStyle,),
                    Row(
                      children: [
                      ],
                    )
                  ],
                ),
              ),),
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


