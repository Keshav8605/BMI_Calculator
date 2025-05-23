import 'package:flutter/material.dart';
import 'input_page.dart';
import 'dart:math';

class Screen2 extends StatelessWidget {
  final String height;
  final String weight;
  final String age;

  Screen2({required this.height, required this.weight, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF090C22),
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Color(0xFF090C22),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text('Your Result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              )),
          Expanded(
            child: Container(
              width: 500.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    weight,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    height,
                    style: TextStyle(
                      fontSize: 90.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Normal BMI range',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      age,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.cyanAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF1D1F33),
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(10.0),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(115, 25, 0, 0),
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
                color: Color(0xFFEA1556),
              ),
            ),
          )
        ],
      ),
    );
  }
}
