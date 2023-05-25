import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.resultText, required this.getResult , required this.getInterpretation});

  final String resultText;
  final String getResult;
  final String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BMI Calculator'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text('Your Result' ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                )),
              ),
            ),
          ),
          Expanded(
              flex:5,
              child: ReusableCard(
                colour: kActiveCardColour,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(getResult,
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    )),
                    Text(resultText,
                    style: TextStyle(
                      fontSize: 90.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text(getInterpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:20.0,
                    ),),
                  ],
                ),
          )),
          Expanded(
              child: Container(

          )),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, bottomLine: 'Re-Calculate')
        ],
      ),

    );
  }
}
