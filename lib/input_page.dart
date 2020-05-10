import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ButtomButton.dart';
import 'Slider_Widget.dart';
import 'results_page.dart';
import 'styles.dart';
import 'Weight_Widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_Content.dart';
import 'reusable_card.dart';
import 'calculator_brain.dart';
import 'Age_Widget.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? ActiveCardColor
                        : InactiveCardColor,
                    cardChild: Icon_Content(
                      genderIcon: FontAwesomeIcons.mars,
                      genderName: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? ActiveCardColor
                        : InactiveCardColor,
                    cardChild: Icon_Content(
                      genderIcon: FontAwesomeIcons.venus,
                      genderName: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              colour: ActiveCardColor,
              cardChild: Slider_Widget(),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseCard(
                    colour: ActiveCardColor,
                    cardChild: Weight_Widget(),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    colour: ActiveCardColor,
                    cardChild: Age_Widget(),
                  ),
                )
              ],
            ),
          ),
          BottomButtom(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalcualtorBrain calc =
                  CalcualtorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.giveFeedBack(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
