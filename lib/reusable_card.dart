import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;

  final childCard;

  ReusableCard({@required this.colour, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: childCard);
  }
}
