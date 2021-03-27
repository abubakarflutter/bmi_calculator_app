import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'build_card.dart';
import 'card_inside_data.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottombutton.dart';
import 'bmicalculation.dart';
import 'circularButton.dart';



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
  int height = 165;
  int weight = 70;
  int age = 21;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF808E98),
                      thumbColor: bottomContainerColor,
                      overlayColor: Color(0x20EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider
                      (value: height.toDouble(),
                        min: 120,
                        max: 250,
                        onChanged: (double newValue){
                      setState(() {
                        height = newValue.toInt();
                      });
    }),
                  )
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
                      Text(weight.toString(), style: cardBigTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularIconButton(icon: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                weight--;
                              });
                            },),
                          SizedBox(width: 10.0,),
                          CircularIconButton(icon: FontAwesomeIcons.plus,
                            onPress: (){
                              setState(() {
                                weight++;
                              });
                            },),
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
                    Text(age.toString(), style: cardBigTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularIconButton(icon: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              age--;
                            });
                          },),
                        SizedBox(width: 10.0,),
                        CircularIconButton(icon: FontAwesomeIcons.plus,
                          onPress: (){
                          setState(() {
                            age++;
                          });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),),
            ],
          ),),
          BottomButton(ontap: (){

            CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
      bmiInterpretationFinalPage: calc.resultInterpretation(),
      bmiBigResultText: calc.BMICalculator(),
      bmiSmallTextIndicator: calc.bmiTextResult(),
    )));
    }, insidetext: "CALCULATE",)
        ],
      ),
    );
  }
}



