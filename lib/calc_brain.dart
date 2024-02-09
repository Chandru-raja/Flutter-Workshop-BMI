import 'dart:math';

class Calc_Brain {
  // constructor
  Calc_Brain({required this.h, this.w});

  // class variables
  final int h;
  final int? w;
  double _bmi = 0.0;

  // class member functions
  // function 1
  String calculateBMI() {
    _bmi = w! / pow(h! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  // function 2
  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18) {
      return "normal";
    } else {
      return "Underweight";
    }
  }

  // function 3
  String getInterp() {
    if (_bmi >= 25) {
      return "You have higher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18) {
      return "You have a normal body weight. Good job.";
    } else {
      return "You have lower than normal body weight. You can eat a bit more.";
    }
  }
}
