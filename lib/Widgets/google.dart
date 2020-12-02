import 'package:flutter/material.dart';

class GoogleButton extends StatefulWidget {
  @override
  _GoogleButtonState createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          //alignment: Alignment.bottomRight,
          height: 28,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/google.png'),
        ),

    );
  }
}
