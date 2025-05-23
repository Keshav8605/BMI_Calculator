import 'dart:math';

class Calculator {
  final int h;
  final int w;
  Calculator({required this.h, required this.w});
  double a = 0;
  String bmi() {
    a = w / pow(h / 100, 2);
    return a.toStringAsFixed(1);
  }

  int c = 0;

  String comment() {
    if (a < 18.5) {
      String b = 'UNDERWEIGHT';
      c = 1;
      return b;
    } else if (a >= 25.0) {
      String b = 'OVERWEIGHT';
      c = 2;
      return b;
    } else {
      String b = 'NORMAL';
      c = 3;
      return b;
    }
  }

  String suggestion() {
    if (c == 1) {
      String b =
          'You are underweight. Focus on a nutritious diet to gain a healthy weight!';
      return b;
    }
    if (c == 2) {
      String b =
          'You are overweight. Consider regular exercise and a healthy diet to stay fit!';
      return b;
    }
    if (c == 3) {
      String b =
          'Good job! You have a healthy weight. Maintain a balanced diet and stay active!';
      return b;
    }
    return 'a';
  }
}
