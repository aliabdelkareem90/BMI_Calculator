import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatefulWidget {
  @required
  String text;
  @required
  IconData iconData;
  Color color = Colors.blueGrey.withOpacity(.2);
  @required
  Function chooseGender;

  GenderWidget(
      {@required this.iconData, this.text, this.color, this.chooseGender});

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.chooseGender,
        splashColor: Colors.pink,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: widget.color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                widget.iconData,
                size: 80,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
