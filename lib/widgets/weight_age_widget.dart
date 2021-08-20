import 'package:flutter/material.dart';

class WeightAgeWidget extends StatefulWidget {
  String label = 'Age';
  int weight;
  int age;
  @required
  Function increment;
  @required
  Function decrement;

  WeightAgeWidget(
      {this.label, this.weight, this.age, this.increment, this.decrement});

  @override
  _WeightAgeWidgetState createState() => _WeightAgeWidgetState();
}

class _WeightAgeWidgetState extends State<WeightAgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blueGrey.withOpacity(.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.label,
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
                  widget.label == 'Age' ? '${widget.age}' : '${widget.weight}',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: widget.decrement,
                  mini: true,
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: widget.increment,
                  mini: true,
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
