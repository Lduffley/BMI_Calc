import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'styles.dart';
import 'RoundedButtonIcon.dart';

class Age_Widget extends StatefulWidget {
  @override
  _Age_WidgetState createState() => _Age_WidgetState();
}

class _Age_WidgetState extends State<Age_Widget> {
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'WEIGHT',
          style: LabelTextStyle,
        ),
        Text(
          age.toString(),
          style: FontStyle_1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              buttonIconChild: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  age--;
                });
              },
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              buttonIconChild: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  age++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
