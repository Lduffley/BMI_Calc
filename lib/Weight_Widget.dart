import 'package:flutter/material.dart';
import 'styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RoundedButtonIcon.dart';

class Weight_Widget extends StatefulWidget {
  @override
  _Weight_WidgetState createState() => _Weight_WidgetState();
}

class _Weight_WidgetState extends State<Weight_Widget> {
  int weight = 60;
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
          weight.toString(),
          style: FontStyle_1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              buttonIconChild: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  weight--;
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
                  weight++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
