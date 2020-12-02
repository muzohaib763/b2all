import 'package:flutter/material.dart';

class SelectionText extends StatefulWidget {
  @override
  _SelectionTextState createState() => _SelectionTextState();
}

class _SelectionTextState extends State<SelectionText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
            ),
            TweenAnimationBuilder(
              child: Center(
                child: Text(
                  'LiveStream Your Business, From Local To Global',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
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
