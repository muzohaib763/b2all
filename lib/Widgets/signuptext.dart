import 'package:flutter/material.dart';

class SignupText extends StatefulWidget {
  @override
  _SignupTextState createState() => _SignupTextState();
}

class _SignupTextState extends State<SignupText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
            ),
            TweenAnimationBuilder(
              child: Center(
                child: Text(
                  'Sell Your Product and Make Your Own Video With B2A',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 3000),
              builder: (BuildContext context, double _val, Widget child) {
                return Opacity(
                  opacity: _val,
                  child: Padding(
                    padding: EdgeInsets.only(top:  _val * 15),
                    child: child,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
