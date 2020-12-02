import 'package:flutter/material.dart';

class SignupName extends StatefulWidget {
  @override
  _SignupNameState createState() => _SignupNameState();
}

class _SignupNameState extends State<SignupName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:250, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.grey[300],
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.white,
            labelText: 'Your Name',
            labelStyle: TextStyle(
              color: Colors.grey[300],
              letterSpacing: 0.1,
              fontFamily: 'RoobertTRIAL-Regular',
              fontSize: 17,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlue, width: 2.0,
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                Icons.person_outline,
                color: Colors.grey[300],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
