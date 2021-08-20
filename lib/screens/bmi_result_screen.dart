import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  bool isMale = true;
  int result;
  int age;

  BMIResultScreen(this.isMale, this.age, this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'BMI Results',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blueGrey.withOpacity(0.5),
          ),
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${getResult()}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Gender : ${isMale ? "Male" : "Female"}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Age : $age',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Back',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getResult() {
    if (result < 18) return 'Underweight';
    if (result > 18 && result < 25) return 'Healthy weight';
    if (result > 25 && result < 30) return 'Overweight';
    if (result > 18) return 'Obesity range';
  }
}
