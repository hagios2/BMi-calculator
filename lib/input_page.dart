import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender userGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        userGender = Gender.male;
                      });
                    },
                    colour: userGender == Gender.male
                        ? activeCardColor
                        : inactivecolor,
                    childCard: CardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        userGender = Gender.female;
                      });
                    },
                    colour: userGender == Gender.female
                        ? activeCardColor
                        : inactivecolor,
                    childCard: CardContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: inactivecolor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: inactivecolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactivecolor,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: bottomContianercolor,
            height: bottomContainerHerght,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
