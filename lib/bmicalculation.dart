import 'dart:convert';
import 'dart:math';

class CalculatorBrain {

  double _bmi = 0;

  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  final double maxBMI = 24;
  final double minBMI = 18;


  // ignore: non_constant_identifier_names
  String BMICalculator(){
    double _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String bmiTextResult() {
    if(_bmi >= 24 ){
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDER WEIGHT";
    }
  }

  String resultInterpretation() {
    if(_bmi >= 24){
      return "You have more than normal weight. Try to excersize more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good Job";
    } else {
      return "You have lower than normal body weight. You should eat a bit more";
    }
  }



}