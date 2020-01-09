import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final btntext;

  BottomButton({@required this.onTap, @required this.btntext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: kBottomContianercolor,
        height: kBottomContainerHerght,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(child: btntext),
      ),
    );
  }
}
