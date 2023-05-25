import'package:flutter/material.dart';
import 'constants.dart';

class iconContent extends StatelessWidget {

  final IconData? cardIcon;
  final String cardText;

  iconContent({this.cardIcon , required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(cardIcon,
          size: 80.0,
          color: Colors.white,),
        SizedBox(
          height: 20.0,
        ),
        Text(cardText,
          style: kCardTextStyle)

      ],
    );
  }
}