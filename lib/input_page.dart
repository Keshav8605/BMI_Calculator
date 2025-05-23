import 'package:bmi_calculator/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bmi_calculator/calculator.dart';
import 'package:flutter/scheduler.dart';

import 'screen2.dart';

Color inactivecolor = Color(0xFF101427);
Color activecolor = Color(0xFF1D1F33);

Color malecard = inactivecolor;
Color femalecard = inactivecolor;

enum Gender {
  male,
  female,
  g,
}

Gender selectedgender = Gender.g;

const double allcontheight = 200;
const contcolour = Color(0xFF1D1E33);

class inputpage extends StatefulWidget {
  const inputpage({super.key});

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  @override
  int kheight = 180;
  int kweight = 50;
  int kage = 25;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF090C22),
          title: Center(
            child: Text(
              'BMI CALCULATOR - by Keshav',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.male,
                                size: 120,
                              ),
                            ),
                            Container(
                              child: Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: selectedgender == Gender.male
                                ? activecolor
                                : inactivecolor,
                            borderRadius: BorderRadius.circular(10)),
                        height: allcontheight,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.female,
                                size: 120,
                              ),
                            ),
                            Container(
                              child: Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: selectedgender == Gender.female
                                ? activecolor
                                : inactivecolor,
                            borderRadius: BorderRadius.circular(10)),
                        height: allcontheight,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                kheight.toString(),
                                style: TextStyle(
                                  fontSize: 70.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                              activeTrackColor: Color(0xFFEA1556),
                              thumbColor: Colors.pink,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayColor: Color(0x29FFFFFF),
                              inactiveTrackColor: Colors.white,
                            ),
                            child: Slider(
                                value: kheight.toDouble(),
                                min: 0,
                                max: 300,
                                onChanged: (double a) {
                                  setState(() {
                                    kheight = a.toInt();
                                  });
                                }),
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: contcolour,
                          borderRadius: BorderRadius.circular(10)),
                      height: allcontheight,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                kweight.toString(),
                                style: TextStyle(
                                  fontSize: 70.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Kg',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                child: Icon(
                                  Icons.remove,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kweight = kweight - 1;
                                  });
                                },
                                shape: CircleBorder(),
                                constraints: BoxConstraints.tightFor(
                                  width: 56.0,
                                  height: 56.0,
                                ),
                                fillColor: Colors.white30,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              RawMaterialButton(
                                child: Icon(
                                  Icons.add,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kweight++;
                                  });
                                },
                                shape: CircleBorder(),
                                constraints: BoxConstraints.tightFor(
                                  width: 56.0,
                                  height: 56.0,
                                ),
                                fillColor: Colors.white30,
                              ),
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: contcolour,
                          borderRadius: BorderRadius.circular(10)),
                      height: allcontheight,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                kage.toString(),
                                style: TextStyle(
                                  fontSize: 70.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Yrs',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                child: Icon(
                                  Icons.remove,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kage--;
                                  });
                                },
                                shape: CircleBorder(),
                                constraints: BoxConstraints.tightFor(
                                  width: 56.0,
                                  height: 56.0,
                                ),
                                fillColor: Colors.white30,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              RawMaterialButton(
                                child: Icon(
                                  Icons.add,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kage++;
                                  });
                                },
                                shape: CircleBorder(),
                                constraints: BoxConstraints.tightFor(
                                  width: 56.0,
                                  height: 56.0,
                                ),
                                fillColor: Colors.white30,
                              ),
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: contcolour,
                          borderRadius: BorderRadius.circular(10)),
                      height: allcontheight,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Calculator c = Calculator(h: kheight, w: kweight);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen2(
                      height: c.bmi(),
                      weight: c.comment(),
                      age: c.suggestion(),
                    );
                  }));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(130, 25, 0, 0),
                    child: Text(
                      'CALCULATE',
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
        ),
      ),
    );
  }
}
