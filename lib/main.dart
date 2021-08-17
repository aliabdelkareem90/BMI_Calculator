import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff000033),
          accentColor: Colors.pink,
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMale = true;
  double currentVal = 170.0;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isMale = true;
                        });
                      },
                      splashColor: Colors.pink,
                      child: GenderWidget(
                        text: 'Male',
                        iconData: FontAwesomeIcons.mars,
                        color: _isMale
                            ? Colors.pink
                            : Colors.blueGrey.withOpacity(.2),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isMale = false;
                        });
                      },
                      splashColor: Colors.pink,
                      child: GenderWidget(
                        text: 'Female',
                        iconData: FontAwesomeIcons.venus,
                        color: !_isMale
                            ? Colors.pink
                            : Colors.blueGrey.withOpacity(.2),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey.withOpacity(.2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              currentVal.round().toString(),
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Slider(
                          min: 120.0,
                          max: 220.0,
                          activeColor: Theme.of(context).accentColor,
                          value: currentVal,
                          onChanged: (val) {
                            setState(() {
                              currentVal = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blueGrey.withOpacity(.2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$age',
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blueGrey.withOpacity(.2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Theme.of(context).accentColor,
              ),
              child: MaterialButton(
                onPressed: () {
                  var res = (weight / pow(currentVal / 100, 2)).round();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIResultScreen(_isMale, age, res),
                    ),
                  );
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 19.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
//  var res = weight / pow(height / 100, 2)
}
