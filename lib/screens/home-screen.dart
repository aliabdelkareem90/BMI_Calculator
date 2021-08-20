import 'dart:math';

import 'package:bmi_calculator/screens/bmi_result_screen.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/slider.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMale = false;
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
                  GenderWidget(
                    text: 'Male',
                    iconData: FontAwesomeIcons.mars,
                    color:
                        _isMale ? Colors.pink : Colors.blueGrey.withOpacity(.2),
                    chooseGender: () {
                      setState(() {
                        _isMale = true;
                      });
                    },
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  GenderWidget(
                    text: 'Female',
                    iconData: FontAwesomeIcons.venus,
                    color: !_isMale
                        ? Colors.pink
                        : Colors.blueGrey.withOpacity(.2),
                    chooseGender: () {
                      setState(() {
                        _isMale = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          HeightSlider(
            onChanged: (val) {
              setState(() {
                currentVal = val;
              });
            },
            currentVal: currentVal,
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    WeightAgeWidget(
                      label: 'Age',
                      age: age,
                      decrement: () {
                        setState(() {
                          age--;
                        });
                      },
                      increment: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    WeightAgeWidget(
                      label: 'Weight',
                      weight: weight,
                      decrement: () {
                        setState(() {
                          weight--;
                        });
                      },
                      increment: () {
                        setState(() {
                          weight++;
                        });
                      },
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
}
