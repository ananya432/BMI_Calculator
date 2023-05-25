import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({required this.onTap, required this.bottomLine});

  final void Function() onTap;
  final String bottomLine;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(bottomLine,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontWeight:FontWeight.w500,
            ),),
        ),
        color: const Color(0xFFEb1555),
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
      ),
    );
  }
}