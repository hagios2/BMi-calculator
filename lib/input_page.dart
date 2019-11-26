import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHerght = 80.0;
const Color activeCardColor = Color(0xFF1D1E22);
const Color inactivecolor = Color(0xFF111328);
const Color bottomContianercolor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender UserGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        UserGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: UserGender == Gender.male
                          ? activeCardColor
                          : inactivecolor,
                      childCard: CardContent(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        UserGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: UserGender == Gender.female
                          ? activeCardColor
                          : inactivecolor,
                      childCard: CardContent(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
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
