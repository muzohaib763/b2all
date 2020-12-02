import 'package:flutter/material.dart';

class CurrentPassword extends StatefulWidget {
  @override
  _CurrentPasswordState createState() => _CurrentPasswordState();
}

class _CurrentPasswordState extends State<CurrentPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            // hintText: 'E-mail',
            // hintStyle: TextStyle(
            //   color: Colors.white,
            // ),
            labelText: 'Current Password',
            labelStyle: TextStyle(
              color: Colors.white,
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
                Icons.person_outline_sharp,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
