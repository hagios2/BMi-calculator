import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  CardContent({@required this.cardIcon, @required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: labelStyle,
        )
      ],
    );
  }
}
