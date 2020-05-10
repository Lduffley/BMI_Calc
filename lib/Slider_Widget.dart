import 'package:flutter/material.dart';
import 'styles.dart';

class Slider_Widget extends StatefulWidget {
  @override
  _Slider_WidgetState createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Height',
          style: LabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: FontStyle_1,
            ),
            Text(
              'cm',
              style: LabelTextStyle,
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          ),
          child: Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            activeColor: Color(0xFFEB1555),
            inactiveColor: Color(0xFF8D8E98),
            onChanged: (double newValue) {
              setState(() {
                height = newValue.round();
              });
              print(newValue);
            },
          ),
        )
      ],
    );
  }
}
