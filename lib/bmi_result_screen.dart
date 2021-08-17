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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueGrey.withOpacity(0.2),
              width: 250,
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Result: ${getResult()}'),
                      Text('Gender : ${isMale? "Male" : "Female"}'),
                      Text('Age : $age'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Theme.of(context).accentColor,
                child: Text('Back'),
              ),
            )
          ],
        ),
      ),
    );
  }

  getResult() {
    if(result < 18) return 'Underweight';
    if(result > 18 && result < 25) return 'Healthy weight';
    if(result > 25 && result < 30) return 'Overweight';
    if(result > 18) return 'Obesity range';
  }
}
