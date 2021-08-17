import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {
  String text;
  IconData iconData;
  Color color = Colors.blueGrey.withOpacity(.2);

  GenderWidget({@required this.iconData, @required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            iconData,
            size: 80,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
