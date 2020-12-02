import 'package:flutter/material.dart';

class BottomText extends StatefulWidget {
  @override
  _BottomTextState createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 320,
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
            ),
            TweenAnimationBuilder(
              child: Center(
                child: Text(
                  'Please Confirm That You Have Read B2A Privacy Policy',
                  style: TextStyle(
                    color: Colors.grey[300],
                    letterSpacing: 0.1,
                    fontFamily: 'RoobertTRIAL-Regular',
                    fontSize: 20,
                  ),
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 2500),
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
