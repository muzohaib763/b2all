import 'package:flutter/material.dart';

class SVerticalText extends StatefulWidget {
  @override
  _SVerticalTextState createState() => _SVerticalTextState();
}

class _SVerticalTextState extends State<SVerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
