import 'package:flutter/material.dart';
import 'styles.dart';

class SliderCard extends StatefulWidget {
  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
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
