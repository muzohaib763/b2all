import 'package:flutter/material.dart';

class SignUpGoogle extends StatefulWidget {
  @override
  _SignUpGoogleState createState() => _SignUpGoogleState();
}

class _SignUpGoogleState extends State<SignUpGoogle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 30,
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/google.png'),
      ),

    );

  }
}
