import 'dart:convert';
import 'dart:math';

class CalculatorBrain {


  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi = 0;


  // ignore: non_constant_identifier_names
  String BMICalculator(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String bmiTextResult() {
    if(_bmi >= 25.0 ){
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDER WEIGHT";
    }
  }

  String resultInterpretation() {
    if(_bmi >= 25.0){
      return "You have more than normal weight. Try to excersize more.";
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Good Job";
    } else {
      return "You have lower than normal body weight. You should eat a bit more";
    }
  }



}