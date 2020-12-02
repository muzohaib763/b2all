import 'package:flutter/material.dart';

class ForgetVerticalText extends StatefulWidget {
  @override
  _ForgetVerticalTextState createState() => _ForgetVerticalTextState();
}

class _ForgetVerticalTextState extends State<ForgetVerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 58, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'B2A',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
