import 'package:bmi_calculator/screen2.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF090C22),
          scaffoldBackgroundColor: Color(0xFF090C22)),
      initialRoute: '/',
      routes: {
        '/': (context) => inputpage(),
        '/1': (context) => Screen2(
              height: 'a',
              weight: 'b',
              age: 'c',
            ),
      },
    );
  }
}
