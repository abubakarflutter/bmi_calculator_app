import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'build_card.dart';
import 'constants.dart';
import 'bottombutton.dart';


class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiBigResultText, @required this.bmiInterpretationFinalPage, @required this.bmiSmallTextIndicator});

  final String bmiBigResultText;
  final String bmiSmallTextIndicator;
  final String bmiInterpretationFinalPage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text('You Result',
                style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w900
              ),),
            ),
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: BuildCard(
            colour: activeCardColor,
            cardData: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(bmiSmallTextIndicator, style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF24D876)
                ),),
                Text(bmiBigResultText, style: TextStyle(
                    fontSize: 70.0,
                    fontWeight: FontWeight.w900
                ),),
                Text(
                  "Normal BMI Ranges 18 to 24",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize: 17.0,
                ),),
                Text(bmiInterpretationFinalPage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                ),),
              ],
            ),
          ),
              )),
          BottomButton(insidetext: "RE-CALCULATE", ontap: (){
            Navigator.pop(context);
          },)
        ],
      )
    );
  }
}
