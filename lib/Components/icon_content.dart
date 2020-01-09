import 'package:flutter/material.dart';
import '../constants.dart';

class CardContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  CardContent({@required this.cardIcon, @required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kLabelStyle,
        )
      ],
    );
  }
}
