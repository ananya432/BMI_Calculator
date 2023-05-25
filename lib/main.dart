import 'package:flutter/material.dart';
import 'Screens/inputPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          // primaryColorDark:Color(0xFF0A0E21),
          scaffoldBackgroundColor:Color(0xFF0A0E21),),
      home:InputPage(),
    );
  }
}

