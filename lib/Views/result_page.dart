import 'package:bmi_calculator/Views/input_page.dart';

import '../constants.dart';
import 'package:flutter/material.dart';
import '../Components/reusable_card.dart';
import '../Components/bottom_btn.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.result,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleText,
              ),
            ),
          ),
          Expanded(
            flex: 13,
            child: ReusableCard(
              colour: kInactivecolor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kresultText,
                  ),
                  Text(
                    result,
                    style: kResultNumber,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            btntext: Text(
              'RE-CALCULATE YOUR BMI',
              style: kBottomLabel,
            ),
          ),
        ],
      ),
    );
  }
}
