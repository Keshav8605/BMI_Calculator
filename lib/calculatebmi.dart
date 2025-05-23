import 'dart:math';

class Calculate {
  Calculate({this.height = 0, this.weight = 0});
  final int height;
  final int weight;
  String bmi() {
    double a = weight / pow(height / 100, 2);
    return a.toStringAsFixed(1);
  }
}
