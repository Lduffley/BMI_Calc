import 'package:flutter/material.dart';
import 'styles.dart';

// ignore: camel_case_types
class Icon_Content extends StatelessWidget {
  Icon_Content({@required this.genderIcon, @required this.genderName});

  final IconData genderIcon;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderName,
          style: LabelTextStyle,
        ),
      ],
    );
  }
}
