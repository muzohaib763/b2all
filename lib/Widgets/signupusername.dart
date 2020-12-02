import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
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
            labelText: 'Username',
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
