import 'package:flutter/material.dart';

class WeightAgeWidget extends StatefulWidget {
  String text;

  WeightAgeWidget({@required this.text});

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
              widget.text,
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
                  '180',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {});
                  },
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
