import 'package:flutter/material.dart';
import 'styles.dart';

class BottomButtom extends StatelessWidget {
  BottomButtom({this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: LargeButtonTextStyle,
          ),
        ),
        color: BottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 5),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
