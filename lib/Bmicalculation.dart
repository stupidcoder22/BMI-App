import 'dart:math';

class Bmicalculation {
  int? height;
  int? weight;

  Bmicalculation({this.height, this.weight});

  double? bmi;

  String bmirealcacl() {
    bmi = weight! / pow(height! / 100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi! >= 25) {
      return 'Overweight';
    } else if (bmi! > 18.5) {
      return 'normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiMessage() {
    if (bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to Exercise more';
    } else if (bmi! > 18.5) {
      return 'You have a normal body weight';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
